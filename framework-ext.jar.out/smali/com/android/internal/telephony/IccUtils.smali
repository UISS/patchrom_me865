.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 181
    const-string v10, ""

    .line 266
    :goto_0
    return-object v10

    .line 183
    :cond_0
    const/4 v10, 0x1

    if-lt p2, v10, :cond_2

    .line 184
    aget-byte v10, p0, p1

    const/16 v11, -0x80

    if-ne v10, v11, :cond_2

    .line 185
    add-int/lit8 v10, p2, -0x1

    div-int/lit8 v9, v10, 0x2

    .line 186
    .local v9, ucslen:I
    const/4 v7, 0x0

    .line 189
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, p1, 0x1

    mul-int/lit8 v11, v9, 0x2

    const-string v12, "utf-16be"

    invoke-direct {v8, p0, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #ret:Ljava/lang/String;
    .local v8, ret:Ljava/lang/String;
    move-object v7, v8

    .line 195
    .end local v8           #ret:Ljava/lang/String;
    .restart local v7       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 199
    :goto_2
    if-lez v9, :cond_1

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xffff

    if-ne v10, v11, :cond_1

    .line 200
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 190
    :catch_0
    move-exception v3

    .line 191
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "IccUtils"

    const-string v11, "implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 202
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 207
    .end local v7           #ret:Ljava/lang/String;
    .end local v9           #ucslen:I
    :cond_2
    const/4 v4, 0x0

    .line 208
    .local v4, isucs2:Z
    const/4 v0, 0x0

    .line 209
    .local v0, base:C
    const/4 v5, 0x0

    .line 211
    .local v5, len:I
    const/4 v10, 0x3

    if-lt p2, v10, :cond_6

    aget-byte v10, p0, p1

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_6

    .line 212
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 213
    add-int/lit8 v10, p2, -0x3

    if-le v5, v10, :cond_3

    .line 214
    add-int/lit8 v5, p2, -0x3

    .line 216
    :cond_3
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x7

    int-to-char v0, v10

    .line 217
    add-int/lit8 p1, p1, 0x3

    .line 218
    const/4 v4, 0x1

    .line 230
    :cond_4
    :goto_3
    if-eqz v4, :cond_a

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v7, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v5, :cond_9

    .line 236
    aget-byte v10, p0, p1

    if-gez v10, :cond_5

    .line 237
    aget-byte v10, p0, p1

    and-int/lit8 v10, v10, 0x7f

    add-int/2addr v10, v0

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 p1, p1, 0x1

    .line 239
    add-int/lit8 v5, v5, -0x1

    .line 244
    :cond_5
    const/4 v1, 0x0

    .line 245
    .local v1, count:I
    :goto_5
    if-ge v1, v5, :cond_8

    add-int v10, p1, v1

    aget-byte v10, p0, v10

    if-ltz v10, :cond_8

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 219
    .end local v1           #count:I
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v10, 0x4

    if-lt p2, v10, :cond_4

    aget-byte v10, p0, p1

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_4

    .line 220
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 221
    add-int/lit8 v10, p2, -0x4

    if-le v5, v10, :cond_7

    .line 222
    add-int/lit8 v5, p2, -0x4

    .line 224
    :cond_7
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-char v0, v10

    .line 226
    add-int/lit8 p1, p1, 0x4

    .line 227
    const/4 v4, 0x1

    goto :goto_3

    .line 248
    .restart local v1       #count:I
    .restart local v7       #ret:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/2addr p1, v1

    .line 252
    sub-int/2addr v5, v1

    .line 253
    goto :goto_4

    .line 255
    .end local v1           #count:I
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 258
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 259
    .local v6, resource:Landroid/content/res/Resources;
    const-string v2, ""

    .line 261
    .local v2, defaultCharset:Ljava/lang/String;
    const v10, 0x1040033

    :try_start_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 266
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 263
    :catch_1
    move-exception v10

    goto :goto_6
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 53
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 54
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 64
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 55
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 59
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    if-gt v2, v4, :cond_0

    .line 61
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 443
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 444
    const/4 v0, -0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "strSep"

    .prologue
    .line 334
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 356
    :goto_0
    return-object v4

    .line 336
    :cond_0
    if-nez p1, :cond_2

    const/4 v3, 0x0

    .line 338
    .local v3, sepLen:I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    array-length v5, p0

    mul-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 343
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v4, 0xf

    .line 345
    .local v0, b:I
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    aget-byte v4, p0, v1

    and-int/lit8 v0, v4, 0xf

    .line 349
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    if-lez v3, :cond_1

    .line 352
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    .end local v0           #b:I
    .end local v1           #i:I
    .end local v2           #ret:Ljava/lang/StringBuilder;
    .end local v3           #sepLen:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 356
    .restart local v1       #i:I
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    .restart local v3       #sepLen:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static bytesToHexStringWithSpaceSep([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 323
    const-string v0, " "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 133
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 136
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 137
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 140
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 75
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 77
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 78
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 79
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 88
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 83
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 84
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 85
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cdmaBytesToImsi([B)Ljava/lang/String;
    .locals 17
    .parameter "b"

    .prologue
    .line 606
    const/4 v12, 0x7

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 607
    .local v11, programmed:Z
    :goto_0
    if-nez v11, :cond_1

    .line 608
    const/4 v12, 0x0

    .line 651
    :goto_1
    return-object v12

    .line 606
    .end local v11           #programmed:Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 613
    .restart local v11       #programmed:Z
    :cond_1
    const/16 v12, 0x9

    :try_start_0
    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x3

    shl-int/lit8 v12, v12, 0x8

    const/16 v13, 0x8

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/android/internal/telephony/IccUtils;->numTrans(II)I

    move-result v8

    .line 615
    .local v8, mcc:I
    const/4 v12, 0x6

    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x7f

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/internal/telephony/IccUtils;->numTrans(II)I

    move-result v9

    .line 617
    .local v9, mnc:I
    const/4 v12, 0x2

    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x3

    mul-int/lit16 v12, v12, 0x100

    const/4 v13, 0x1

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/android/internal/telephony/IccUtils;->numTrans(II)I

    move-result v7

    .line 618
    .local v7, imsi_s2:I
    const/4 v12, 0x5

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    mul-int/lit8 v12, v12, 0x4

    const/4 v13, 0x4

    aget-byte v13, p0, v13

    shr-int/lit8 v13, v13, 0x6

    and-int/lit8 v13, v13, 0x3

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/android/internal/telephony/IccUtils;->numTrans(II)I

    move-result v6

    .line 619
    .local v6, imsi_s1_3:I
    const/4 v12, 0x4

    aget-byte v12, p0, v12

    shr-int/lit8 v12, v12, 0x2

    and-int/lit8 v12, v12, 0xf

    rem-int/lit8 v5, v12, 0xa

    .line 620
    .local v5, imsi_s1_2:I
    const/4 v12, 0x4

    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x3

    mul-int/lit16 v12, v12, 0x100

    const/4 v13, 0x3

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/android/internal/telephony/IccUtils;->numTrans(II)I

    move-result v4

    .line 622
    .local v4, imsi_s1_1:I
    const/4 v12, 0x0

    aget-byte v12, p0, v12

    and-int/lit8 v1, v12, 0x1

    .line 623
    .local v1, clazz:I
    packed-switch v1, :pswitch_data_0

    .line 648
    const/4 v12, 0x0

    goto :goto_1

    .line 625
    :pswitch_0
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%03d%02d%03d%03d%01d%03d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 628
    :pswitch_1
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%03d%03d%01d%03d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, orig_msin:Ljava/lang/String;
    const/4 v12, 0x7

    aget-byte v12, p0, v12

    and-int/lit8 v0, v12, 0x7

    .line 632
    .local v0, addr_len:I
    const/4 v3, 0x0

    .line 633
    .local v3, idx:I
    if-nez v0, :cond_4

    .line 635
    :goto_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 636
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-eq v12, v13, :cond_3

    .line 646
    :cond_2
    :goto_3
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%03d%02d%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 635
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 642
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    add-int/lit8 v13, v0, 0x2

    sub-int v3, v12, v13

    .line 643
    if-gez v3, :cond_2

    .line 644
    const/4 v3, 0x0

    goto :goto_3

    .line 650
    .end local v0           #addr_len:I
    .end local v1           #clazz:I
    .end local v3           #idx:I
    .end local v4           #imsi_s1_1:I
    .end local v5           #imsi_s1_2:I
    .end local v6           #imsi_s1_3:I
    .end local v7           #imsi_s2:I
    .end local v8           #mcc:I
    .end local v9           #mnc:I
    .end local v10           #orig_msin:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 651
    .local v2, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 538
    if-nez p0, :cond_1

    .line 539
    const/4 v4, 0x0

    .line 553
    :cond_0
    return-object v4

    .line 542
    :cond_1
    new-array v4, p2, [I

    .line 543
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 544
    .local v3, endIndex:I
    move v5, p1

    .line 545
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 546
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 548
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 552
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 111
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 114
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 115
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 118
    :cond_1
    return v0
.end method

.method public static gsmBytesToImsi([B)Ljava/lang/String;
    .locals 11
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0xf

    const/4 v9, 0x1

    .line 558
    const/4 v7, 0x0

    aget-byte v3, p0, v7

    .line 559
    .local v3, imsiLen:I
    aget-byte v7, p0, v9

    ushr-int/lit8 v7, v7, 0x3

    and-int/lit8 v4, v7, 0x1

    .line 560
    .local v4, parity:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    .local v5, sb:Ljava/lang/StringBuffer;
    aget-byte v7, p0, v9

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-object v6

    .line 566
    :cond_1
    aget-byte v7, p0, v9

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 571
    const/4 v2, 0x2

    .local v2, i:I
    :goto_1
    if-gt v2, v3, :cond_2

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-gt v2, v7, :cond_2

    .line 572
    aget-byte v7, p0, v2

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v0, v7, 0xf

    .line 573
    .local v0, dh:I
    aget-byte v7, p0, v2

    and-int/lit8 v1, v7, 0xf

    .line 574
    .local v1, dl:I
    if-ne v1, v10, :cond_3

    .line 584
    .end local v0           #dh:I
    .end local v1           #dl:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/2addr v7, v4

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_0

    .line 588
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 576
    .restart local v0       #dh:I
    .restart local v1       #dl:I
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 577
    if-eq v0, v10, :cond_2

    .line 579
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 271
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 273
    :goto_0
    return v0

    .line 272
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 273
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 275
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 292
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 303
    :cond_0
    return-object v1

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 298
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 299
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 298
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 488
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 489
    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 521
    :goto_0
    return-object v2

    .line 494
    :cond_0
    const/4 v0, 0x1

    .line 495
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 510
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 511
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 512
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 513
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 514
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 515
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 516
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 517
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 515
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 497
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 498
    goto :goto_1

    .line 500
    :pswitch_2
    const/4 v0, 0x3

    .line 501
    goto :goto_1

    .line 503
    :pswitch_3
    const/16 v0, 0xf

    .line 504
    goto :goto_1

    .line 506
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 520
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 521
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 526
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 527
    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    .line 532
    :cond_0
    new-array v0, p2, [I

    .line 534
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 369
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 370
    :cond_0
    const-string v2, ""

    .line 407
    :cond_1
    :goto_0
    return-object v2

    .line 373
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 394
    const-string v2, ""

    .line 402
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 377
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 378
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 379
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 384
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 386
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 387
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 388
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static numTrans(II)I
    .locals 3
    .parameter "input"
    .parameter "len"

    .prologue
    .line 592
    const/4 v1, 0x0

    .line 593
    .local v1, output:I
    const/4 v0, 0x1

    .line 594
    .local v0, level:I
    :goto_0
    if-lez p1, :cond_0

    .line 595
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xa

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 596
    mul-int/lit8 v0, v0, 0xa

    .line 597
    div-int/lit8 p0, p0, 0xa

    .line 598
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 600
    :cond_0
    return v1
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 417
    const/4 v8, 0x0

    .line 418
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 419
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 420
    .local v3, height:I
    mul-int v4, v10, v3

    .line 422
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 424
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 425
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 426
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 427
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 429
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 430
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 431
    const/4 v0, 0x7

    .line 433
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 436
    :cond_0
    if-eq v6, v4, :cond_1

    .line 437
    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 460
    const/4 v6, 0x0

    .line 461
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 462
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 463
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 464
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 465
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 468
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 469
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 470
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 473
    :cond_0
    const/4 v5, 0x0

    .line 474
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 475
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 482
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 478
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method

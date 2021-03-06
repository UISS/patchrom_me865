.class public abstract Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneNVInfo.java"

# interfaces
.implements Lcom/motorola/android/telephony/IPhoneNVInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IPhoneNVInfo"

.field static final TRANSACTION_getCDMAAkeyHashValue:I = 0x20

.field static final TRANSACTION_getCDMAOnlyModeEnabled:I = 0x23

.field static final TRANSACTION_getEHRPDStatus:I = 0xb

.field static final TRANSACTION_getHDRSCPSessionStatus:I = 0xd

.field static final TRANSACTION_getIPV6Enable:I = 0x21

.field static final TRANSACTION_getImsCdmaScanTimer:I = 0x1a

.field static final TRANSACTION_getImsEmpaSupported:I = 0x11

.field static final TRANSACTION_getImsHomeDomain:I = 0x14

.field static final TRANSACTION_getImsMultimodeScanTimer:I = 0x18

.field static final TRANSACTION_getImsPcscfPort:I = 0x8

.field static final TRANSACTION_getImsPhoneContextURI:I = 0x7

.field static final TRANSACTION_getImsSigComp:I = 0xa

.field static final TRANSACTION_getImsSmsFormat:I = 0x12

.field static final TRANSACTION_getImsSmsOverIP:I = 0x16

.field static final TRANSACTION_getImsT1Timer:I = 0x1

.field static final TRANSACTION_getImsT2Timer:I = 0x3

.field static final TRANSACTION_getImsTestMode:I = 0xf

.field static final TRANSACTION_getImsTfTimer:I = 0x5

.field static final TRANSACTION_getModemAPN:I = 0x1e

.field static final TRANSACTION_registerObserver:I = 0x1c

.field static final TRANSACTION_setCDMAOnlyModeEnabled:I = 0x24

.field static final TRANSACTION_setEHRPDStatus:I = 0xc

.field static final TRANSACTION_setHDRSCPSessionStatus:I = 0xe

.field static final TRANSACTION_setIPV6Enable:I = 0x22

.field static final TRANSACTION_setImsCdmaScanTimer:I = 0x1b

.field static final TRANSACTION_setImsHomeDomain:I = 0x15

.field static final TRANSACTION_setImsMultimodeScanTimer:I = 0x19

.field static final TRANSACTION_setImsPcscfPort:I = 0x9

.field static final TRANSACTION_setImsSmsFormat:I = 0x13

.field static final TRANSACTION_setImsSmsOverIP:I = 0x17

.field static final TRANSACTION_setImsT1Timer:I = 0x2

.field static final TRANSACTION_setImsT2Timer:I = 0x4

.field static final TRANSACTION_setImsTestMode:I = 0x10

.field static final TRANSACTION_setImsTfTimer:I = 0x6

.field static final TRANSACTION_setModemAPN:I = 0x1f

.field static final TRANSACTION_unregisterObserver:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT1Timer()I

    move-result v1

    .line 49
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:I
    :sswitch_2
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT1Timer(I)I

    move-result v1

    .line 59
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_3
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT2Timer()I

    move-result v1

    .line 67
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT2Timer(I)I

    move-result v1

    .line 77
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_5
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTfTimer()I

    move-result v1

    .line 85
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTfTimer(I)I

    move-result v1

    .line 95
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_7
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPhoneContextURI()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPcscfPort()I

    move-result v1

    .line 111
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v1           #_result:I
    :sswitch_9
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsPcscfPort(I)I

    move-result v1

    .line 121
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_a
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSigComp()Z

    move-result v1

    .line 129
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v1           #_result:Z
    :sswitch_b
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getEHRPDStatus()I

    move-result v1

    .line 137
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_result:I
    :sswitch_c
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setEHRPDStatus(I)I

    move-result v1

    .line 147
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_d
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getHDRSCPSessionStatus()I

    move-result v1

    .line 155
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v1           #_result:I
    :sswitch_e
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setHDRSCPSessionStatus(I)I

    move-result v1

    .line 165
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_f
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTestMode()Z

    move-result v1

    .line 173
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v1           #_result:Z
    :sswitch_10
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 182
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTestMode(Z)I

    move-result v1

    .line 183
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_2
    move v0, v2

    .line 181
    goto :goto_1

    .line 189
    :sswitch_11
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsEmpaSupported()Z

    move-result v1

    .line 191
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v1           #_result:Z
    :sswitch_12
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsFormat()Z

    move-result v1

    .line 199
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v1           #_result:Z
    :sswitch_13
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 208
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsFormat(Z)I

    move-result v1

    .line 209
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_5
    move v0, v2

    .line 207
    goto :goto_2

    .line 215
    :sswitch_14
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsHomeDomain()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsHomeDomain(Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_16
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsOverIP()Z

    move-result v1

    .line 235
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v1           #_result:Z
    :sswitch_17
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 244
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsOverIP(Z)I

    move-result v1

    .line 245
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_7
    move v0, v2

    .line 243
    goto :goto_3

    .line 251
    :sswitch_18
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsMultimodeScanTimer()I

    move-result v1

    .line 253
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v1           #_result:I
    :sswitch_19
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsMultimodeScanTimer(I)I

    move-result v1

    .line 263
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_1a
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsCdmaScanTimer()I

    move-result v1

    .line 271
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v1           #_result:I
    :sswitch_1b
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsCdmaScanTimer(I)I

    move-result v1

    .line 281
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_1c
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .line 290
    .local v0, _arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 296
    .end local v0           #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1d
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .line 299
    .restart local v0       #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 305
    .end local v0           #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1e
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getModemAPN()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getCDMAAkeyHashValue()[B

    move-result-object v1

    .line 325
    .local v1, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 331
    .end local v1           #_result:[B
    :sswitch_21
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getIPV6Enable()Z

    move-result v1

    .line 333
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 339
    .end local v1           #_result:Z
    :sswitch_22
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v0, v3

    .line 342
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setIPV6Enable(Z)I

    move-result v1

    .line 343
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_9
    move v0, v2

    .line 341
    goto :goto_4

    .line 349
    :sswitch_23
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getCDMAOnlyModeEnabled()Z

    move-result v1

    .line 351
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v1           #_result:Z
    :sswitch_24
    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    move v0, v3

    .line 360
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setCDMAOnlyModeEnabled(Z)I

    move-result v1

    .line 361
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_b
    move v0, v2

    .line 359
    goto :goto_5

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

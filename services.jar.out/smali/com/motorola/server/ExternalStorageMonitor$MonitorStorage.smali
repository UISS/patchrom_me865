.class Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
.super Ljava/lang/Object;
.source "ExternalStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/ExternalStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorStorage"
.end annotation


# instance fields
.field private mPercentage:I

.field private mStatFs:Landroid/os/StatFs;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field final synthetic this$0:Lcom/motorola/server/ExternalStorageMonitor;


# direct methods
.method constructor <init>(Lcom/motorola/server/ExternalStorageMonitor;Landroid/os/storage/StorageVolume;)V
    .locals 2
    .parameter
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-object p1, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    .line 141
    iput-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mPercentage:I

    .line 145
    iput-object p2, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    .line 146
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    .line 148
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/16 v0, 0xc

    iput v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mPercentage:I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mPercentage:I

    goto :goto_0
.end method


# virtual methods
.method cancelNotification()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/motorola/server/ExternalStorageMonitor;->access$200(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 222
    return-void
.end method

.method check()V
    .locals 10

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .local v2, free:J
    const-wide/16 v4, 0x0

    .line 158
    .local v4, threshold:J
    :try_start_0
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 166
    const-string v6, "debug.freevolume"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, debug:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 170
    :cond_0
    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    iget v8, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mPercentage:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x64

    div-long v4, v6, v8

    .line 172
    const-wide/32 v6, 0x1f400000

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 173
    const-wide/32 v4, 0x1f400000

    .line 178
    :cond_1
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->sendNotification()V

    .line 183
    .end local v0           #debug:Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExternalStorageMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t StatFs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #debug:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->cancelNotification()V

    goto :goto_0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method sendNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 192
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/ExternalStorageMonitor;->access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040606

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 194
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/ExternalStorageMonitor;->access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040607

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, details:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    const-string v5, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v5, "reason"

    const-string v6, "low_internal_storage"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :goto_0
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/ExternalStorageMonitor;->access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 208
    .local v3, pi:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 209
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x1080506

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 210
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 211
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 212
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/ExternalStorageMonitor;->access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 213
    iget-object v5, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/motorola/server/ExternalStorageMonitor;->access$200(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 214
    return-void

    .line 204
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_0
    const-string v5, "com.motorola.intent.action.USB_LAUNCH_FILE_MANAGER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.class public Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final AUTOMATIC_BRIGHTNESS_MODE_BRIGHT:I = 0x0

.field public static final AUTOMATIC_BRIGHTNESS_MODE_DIM:I = 0x2

.field public static final AUTOMATIC_BRIGHTNESS_MODE_DIMMER:I = 0x3

.field public static final AUTOMATIC_BRIGHTNESS_MODE_NORMAL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DMP_DBG:Z = false

.field public static final FULL_WAKE_LOCK:I = 0x1a

.field private static final LOCK_MASK:I = 0x3f

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field private static final WAKE_BIT_CPU_STRONG:I = 0x1

.field private static final WAKE_BIT_CPU_WEAK:I = 0x2

.field private static final WAKE_BIT_KEYBOARD_BRIGHT:I = 0x10

.field private static final WAKE_BIT_PROXIMITY_SCREEN_OFF:I = 0x20

.field private static final WAKE_BIT_SCREEN_BRIGHT:I = 0x8

.field private static final WAKE_BIT_SCREEN_DIM:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/IPowerManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    const-string v2, "debug.wakelocks"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/os/PowerManager;->DMP_DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    return-void
.end method

.method public constructor <init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 631
    iput-object p2, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mToken:Landroid/os/IBinder;

    .line 635
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Landroid/os/PowerManager;->DMP_DBG:Z

    return v0
.end method


# virtual methods
.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 579
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedWakeLockFlags()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 581
    :goto_0
    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goToDeepSleep(ZJ)V
    .locals 1
    .parameter "mode"
    .parameter "time"

    .prologue
    .line 667
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->goToDeepSleep(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 601
    :goto_0
    return v1

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listenEventLog(Lcom/motorola/datacollection/DataCollectionListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "flag"

    .prologue
    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p1, Lcom/motorola/datacollection/DataCollectionListener;->callback:Lcom/motorola/datacollection/IDataCollectionListener;

    invoke-interface {v0, v1, p2}, Landroid/os/IPowerManager;->listenEventLog(Lcom/motorola/datacollection/IDataCollectionListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 3
    .parameter "flags"
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    .line 487
    if-nez p2, :cond_0

    .line 488
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag is null in PowerManager.newWakeLock"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    const-string v1, "ro.debuggable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 496
    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, newtag:Ljava/lang/String;
    new-instance v1, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v1, p0, p1, v0}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    .line 502
    .end local v0           #newtag:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public proximityTargetDetected()Z
    .locals 1

    .prologue
    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->proximityTargetDetected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 657
    :goto_0
    return v0

    .line 655
    :catch_0
    move-exception v0

    .line 657
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAclEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 691
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/os/IPowerManager;->setAclEnabled(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutomaticBrightnessMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAutomaticBrightnessMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 554
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 1
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    .line 523
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/motorola/Camera/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4359
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4364
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$6800(Lcom/motorola/Camera/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4365
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$6800(Lcom/motorola/Camera/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 4366
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$6800(Lcom/motorola/Camera/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4373
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4376
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$6902(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)Ljava/lang/String;

    .line 4378
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->registerVideo()V
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$7000(Lcom/motorola/Camera/Camcorder;)V

    .line 4380
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecording() - mCurrentVideoFilename"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4385
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4386
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$7100(Lcom/motorola/Camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4387
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camcorder;->access$7102(Lcom/motorola/Camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4390
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$7100(Lcom/motorola/Camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4396
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$7;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$7202(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 4397
    return-void

    .line 4368
    :catch_0
    move-exception v0

    .line 4370
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecording() - stop() failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.class public Lcom/motorola/Camera/Camera$CameraDialog;
.super Landroid/app/AlertDialog;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDialog"
.end annotation


# static fields
.field public static final DIALOG_AUTOTIMER_MODE:I

.field public static final DIALOG_MODE_MAX:I


# instance fields
.field private currentDialog:I

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method protected constructor <init>(Lcom/motorola/Camera/Camera;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "dialogID"

    .prologue
    .line 7317
    iput-object p1, p0, Lcom/motorola/Camera/Camera$CameraDialog;->this$0:Lcom/motorola/Camera/Camera;

    .line 7318
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 7315
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->currentDialog:I

    .line 7321
    if-gtz p3, :cond_0

    .line 7322
    iput p3, p0, Lcom/motorola/Camera/Camera$CameraDialog;->currentDialog:I

    .line 7324
    :cond_0
    return-void
.end method

.method private initAutoTimerModeButtons()V
    .locals 4

    .prologue
    .line 7347
    const v3, 0x7f0d0005

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera$CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 7348
    .local v1, autotimer3sBtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 7349
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7352
    :cond_0
    const v3, 0x7f0d0006

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera$CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7353
    .local v2, autotimer5sBtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 7354
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7357
    :cond_1
    const v3, 0x7f0d0007

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera$CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7358
    .local v0, autotimer10sBtn:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 7359
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7361
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 7364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 7381
    :goto_0
    return-void

    .line 7367
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x3

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7368
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera$CameraDialog;->dismiss()V

    goto :goto_0

    .line 7371
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x5

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7372
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera$CameraDialog;->dismiss()V

    goto :goto_0

    .line 7375
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->this$0:Lcom/motorola/Camera/Camera;

    const/16 v1, 0xa

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7376
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera$CameraDialog;->dismiss()V

    goto :goto_0

    .line 7364
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0005
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 7328
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 7331
    iget v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->currentDialog:I

    packed-switch v0, :pswitch_data_0

    .line 7339
    :goto_0
    return-void

    .line 7333
    :pswitch_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera$CameraDialog;->setContentView(I)V

    .line 7334
    invoke-direct {p0}, Lcom/motorola/Camera/Camera$CameraDialog;->initAutoTimerModeButtons()V

    goto :goto_0

    .line 7331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7384
    packed-switch p1, :pswitch_data_0

    .line 7392
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 7386
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$CameraDialog;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onAutoTimerItemCanceled()V

    .line 7387
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 7384
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

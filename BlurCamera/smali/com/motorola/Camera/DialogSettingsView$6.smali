.class Lcom/motorola/Camera/DialogSettingsView$6;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$6;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$6;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1438
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$6;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 1439
    return-void
.end method

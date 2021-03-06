.class Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter
    .parameter "slidingTab"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 169
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 199
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$102(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 201
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1040324

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 210
    :cond_1
    return-void

    .line 201
    :cond_2
    const v0, 0x1040325

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 189
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 218
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 175
    .local v0, vibe:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x10802db

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x10803a8

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1080391

    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10803a4

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 185
    return-void

    .line 172
    .end local v0           #vibe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    .restart local v0       #vibe:Z
    :cond_1
    const v1, 0x10802d8

    goto :goto_1

    :cond_2
    const v1, 0x10802d9

    goto :goto_1

    :cond_3
    const v2, 0x10803a5

    goto :goto_2

    :cond_4
    const v3, 0x1080390

    goto :goto_3

    :cond_5
    const v4, 0x10803a3

    goto :goto_4
.end method

.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mIsBlinkEnabled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 8944
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8941
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mIsBlinkEnabled:Z

    .line 8945
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 8946
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 8972
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 8973
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8974
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 8976
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 8949
    iget-boolean v1, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 8969
    :cond_0
    :goto_0
    return-void

    .line 8953
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8955
    iget-object v1, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8957
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    #calls: Landroid/widget/TextView;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8958
    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_2

    .line 8961
    iget-boolean v1, p0, Landroid/widget/TextView$Blink;->mIsBlinkEnabled:Z

    if-eqz v1, :cond_2

    .line 8962
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v0}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)V

    .line 8967
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p0, p0, v1, v2}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method setBlinkEnabld(Z)V
    .locals 0
    .parameter "isBlinkEnabled"

    .prologue
    .line 8984
    iput-boolean p1, p0, Landroid/widget/TextView$Blink;->mIsBlinkEnabled:Z

    .line 8985
    return-void
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 8979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 8980
    return-void
.end method

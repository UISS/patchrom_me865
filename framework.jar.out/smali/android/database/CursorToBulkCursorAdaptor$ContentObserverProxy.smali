.class final Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
.super Landroid/database/ContentObserver;
.source "CursorToBulkCursorAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorToBulkCursorAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentObserverProxy"
.end annotation


# instance fields
.field protected mRemote:Landroid/database/IContentObserver;

.field protected mRemoteToken:I


# direct methods
.method public constructor <init>(Landroid/database/IContentObserver;ILandroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .parameter "remoteObserver"
    .parameter "token"
    .parameter "recipient"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 66
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    .line 67
    iput p2, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemoteToken:I

    .line 69
    :try_start_0
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    iget v1, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemoteToken:I

    invoke-interface {v0, p1, v1}, Landroid/database/IContentObserver;->onChange(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .locals 2
    .parameter "recipient"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

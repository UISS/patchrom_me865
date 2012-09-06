.class public final Landroid/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 668
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 669
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 670
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 621
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V
    .locals 13
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"
    .parameter "uid"
    .parameter "pid"
    .parameter "token"
    .parameter "service"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 738
    iget-object v9, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/content/ContentService$ObserverNode$ObserverEntry;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v12

    .line 745
    .local v12, segment:Ljava/lang/String;
    if-nez v12, :cond_1

    .line 746
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used for observer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_1
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 749
    .local v10, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v10, :cond_3

    .line 750
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 751
    .local v0, node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V

    goto :goto_0

    .line 749
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 761
    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_3
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    invoke-direct {v0, v12}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 762
    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V

    goto :goto_0
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;I)V
    .locals 7
    .parameter "leaf"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p4, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 839
    .local v0, N:I
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 840
    .local v3, observerBinder:Landroid/os/IBinder;
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 841
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 848
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget-object v4, v4, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget-object v4, v4, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->token:I

    if-ne v4, p5, :cond_2

    if-nez p3, :cond_2

    .line 840
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 839
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2           #i:I
    .end local v3           #observerBinder:Landroid/os/IBinder;
    :cond_1
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    .line 862
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2       #i:I
    .restart local v3       #observerBinder:Landroid/os/IBinder;
    :cond_2
    if-nez p1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    if-eqz v4, :cond_0

    .line 864
    :cond_3
    new-instance v4, Landroid/content/ContentService$ObserverCall;

    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget-object v5, v5, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    iget v6, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->token:I

    invoke-direct {v4, p0, v5, p3, v6}, Landroid/content/ContentService$ObserverCall;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    const/4 v0, 0x0

    .line 719
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .parameter "uri"
    .parameter "index"

    .prologue
    .line 704
    if-eqz p1, :cond_1

    .line 705
    if-nez p2, :cond_0

    .line 706
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V
    .locals 10
    .parameter "uri"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"
    .parameter "uid"
    .parameter "pid"
    .parameter "token"
    .parameter "service"

    .prologue
    .line 726
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V

    .line 729
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;I)V
    .locals 11
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p5, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    const/4 v9, 0x0

    .line 879
    .local v9, segment:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    .line 880
    .local v10, segmentCount:I
    if-lt p2, v10, :cond_3

    .line 883
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;I)V

    .line 893
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 894
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 895
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 896
    .local v0, node:Landroid/content/ContentService$ObserverNode;
    if-eqz v9, :cond_1

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 899
    :cond_1
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;I)V

    .line 901
    if-eqz v9, :cond_4

    .line 906
    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_2
    return-void

    .line 885
    .end local v7           #N:I
    .end local v8           #i:I
    :cond_3
    if-ge p2, v10, :cond_0

    .line 886
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 889
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;I)V

    goto :goto_0

    .line 894
    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    .restart local v7       #N:I
    .restart local v8       #i:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "name"
    .parameter "prefix"
    .parameter "counts"
    .parameter "pidCounts"

    .prologue
    .line 674
    const/4 v4, 0x0

    .line 675
    .local v4, innerName:Ljava/lang/String;
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 676
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 681
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 682
    const/4 v0, 0x1

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 683
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 681
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 679
    .end local v8           #i:I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 688
    if-nez v4, :cond_2

    .line 689
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 695
    :cond_2
    :goto_2
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 696
    const/4 v0, 0x0

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 697
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 695
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 692
    .end local v8           #i:I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 701
    :cond_4
    return-void
.end method

.method public removeAllObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 6
    .parameter "observer"

    .prologue
    .line 771
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 772
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 773
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Landroid/content/ContentService$ObserverNode;->removeAllObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v0

    .line 774
    .local v0, empty:Z
    if-eqz v0, :cond_0

    .line 775
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    add-int/lit8 v2, v2, -0x1

    .line 777
    add-int/lit8 v3, v3, -0x1

    .line 772
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    .end local v0           #empty:Z
    :cond_1
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 782
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 783
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 784
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->token:I

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentService$ObserverHolder;->release(Landroid/database/IContentObserver;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    add-int/lit8 v2, v2, -0x1

    .line 788
    add-int/lit8 v3, v3, -0x1

    .line 782
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 793
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 794
    const/4 v4, 0x1

    .line 796
    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;I)Z
    .locals 5
    .parameter "observer"
    .parameter "token"

    .prologue
    .line 803
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 804
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 806
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;I)Z

    move-result v0

    .line 808
    .local v0, empty:Z
    if-eqz v0, :cond_0

    .line 809
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 810
    add-int/lit8 v2, v2, -0x1

    .line 811
    add-int/lit8 v3, v3, -0x1

    .line 804
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    .end local v0           #empty:Z
    :cond_1
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 816
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 817
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 820
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->token:I

    if-ne p2, v4, :cond_3

    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentService$ObserverHolder;->release(Landroid/database/IContentObserver;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 823
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 828
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 829
    const/4 v4, 0x1

    .line 831
    :goto_2
    return v4

    .line 816
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 831
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method
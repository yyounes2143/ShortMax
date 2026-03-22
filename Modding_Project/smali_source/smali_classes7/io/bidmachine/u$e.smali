.class Lio/bidmachine/u$e;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/AdProcessCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/u$e;->a:Lio/bidmachine/AdProcessCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$e;->a:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    new-instance v1, Lfr/a;

    .line 4
    .line 5
    sget-object v2, Lfr/a;->f:Lfr/a;

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const-string v4, "Creative loading timeout reached"

    .line 9
    .line 10
    invoke-direct {v1, v2, v3, v4}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

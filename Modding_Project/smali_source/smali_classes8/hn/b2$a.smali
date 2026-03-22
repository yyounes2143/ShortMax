.class final Lhn/b2$a;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhn/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/media/metrics/LogSessionId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lo5/x;->a()Landroid/media/metrics/LogSessionId;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lhn/b2$a;->a:Landroid/media/metrics/LogSessionId;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/media/metrics/LogSessionId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhn/b2$a;->a:Landroid/media/metrics/LogSessionId;

    .line 2
    .line 3
    invoke-static {}, Lo5/x;->a()Landroid/media/metrics/LogSessionId;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lq5/a0;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lhn/b2$a;->a:Landroid/media/metrics/LogSessionId;

    .line 15
    .line 16
    return-void
.end method

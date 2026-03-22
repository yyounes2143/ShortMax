.class Lio/bidmachine/iab/vast/a$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/a;->W(Landroid/content/Context;Ltm/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ltm/e;

.field final synthetic c:Lio/bidmachine/iab/vast/a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/a;Landroid/content/Context;Ltm/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$d;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/a$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/vast/a$d;->b:Ltm/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$d;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->e(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/vast/processor/VastAd;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/bidmachine/iab/vast/a$d;->b:Ltm/e;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/a;->j(Lio/bidmachine/iab/vast/a;Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Ltm/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

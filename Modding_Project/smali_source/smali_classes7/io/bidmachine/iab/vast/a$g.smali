.class Lio/bidmachine/iab/vast/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/a;->m(Lqm/a;Ltm/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm/a;

.field final synthetic b:Lqm/a;

.field final synthetic c:Lio/bidmachine/iab/vast/a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/a;Ltm/a;Lqm/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$g;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/a$g;->a:Ltm/a;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/vast/a$g;->b:Lqm/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$g;->a:Ltm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$g;->c:Lio/bidmachine/iab/vast/a;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/iab/vast/a$g;->b:Lqm/a;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Ltm/a;->b(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

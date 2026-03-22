.class Lio/bidmachine/iab/vast/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/a;->o(Ltm/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm/e;

.field final synthetic b:Lio/bidmachine/iab/vast/a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/a;Ltm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$e;->b:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/a$e;->a:Ltm/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$e;->a:Ltm/e;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$e;->b:Lio/bidmachine/iab/vast/a;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ltm/e;->b(Lio/bidmachine/iab/vast/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

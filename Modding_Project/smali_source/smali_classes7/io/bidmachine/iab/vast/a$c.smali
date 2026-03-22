.class Lio/bidmachine/iab/vast/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/a;->T(Landroid/content/Context;Ljava/lang/String;Ltm/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ltm/e;

.field final synthetic d:Lio/bidmachine/iab/vast/a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/a;Landroid/content/Context;Ljava/lang/String;Ltm/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$c;->d:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/a$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/vast/a$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/iab/vast/a$c;->c:Ltm/e;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$c;->d:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/iab/vast/a$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/iab/vast/a$c;->c:Ltm/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/a;->U(Landroid/content/Context;Ljava/lang/String;Ltm/e;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

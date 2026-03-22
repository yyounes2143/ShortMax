.class Lou/a$a$a;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lmu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lou/a$a;->a(Lmu/a;)Lku/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmu/a;

.field final synthetic b:Lou/a$a;


# direct methods
.method constructor <init>(Lou/a$a;Lmu/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lou/a$a$a;->b:Lou/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lou/a$a$a;->a:Lmu/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lou/a$a$a;->b:Lou/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lou/a$a;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lou/a$a$a;->a:Lmu/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lmu/a;->call()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

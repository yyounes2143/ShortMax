.class public final Len/h$a;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Len/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Len/d$a;

.field private c:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Len/i$b;

    invoke-direct {v0}, Len/i$b;-><init>()V

    invoke-direct {p0, p1, v0}, Len/h$a;-><init>(Landroid/content/Context;Len/d$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Len/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Len/h$a;->a:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Len/d$a;

    iput-object p1, p0, Len/h$a;->b:Len/d$a;

    return-void
.end method


# virtual methods
.method public a()Len/h;
    .locals 3

    .line 1
    new-instance v0, Len/h;

    .line 2
    .line 3
    iget-object v1, p0, Len/h$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Len/h$a;->b:Len/d$a;

    .line 6
    .line 7
    invoke-interface {v2}, Len/d$a;->createDataSource()Len/d;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Len/h;-><init>(Landroid/content/Context;Len/d;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Len/h$a;->c:Len/o;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Len/h;->c(Len/o;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Len/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Len/h$a;->a()Len/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

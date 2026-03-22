.class public Ldq/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldq/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldq/a;


# direct methods
.method protected constructor <init>(Ldq/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq/a$a;->a:Ldq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldq/a$a;->a:Ldq/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbq/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ldq/a$a;->a:Ldq/a;

    .line 10
    .line 11
    new-instance v1, Lrq/t;

    .line 12
    .line 13
    const-string v2, "Surface Destroyed"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ldq/a;->r0(Ldq/a;Lrq/t;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

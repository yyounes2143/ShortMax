.class public final Lii/b$e;
.super Lyd/d;
.source "LogoutTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lii/b;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lii/b;


# direct methods
.method constructor <init>(Lii/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lii/b$e;->e:Lii/b;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lii/b$e;->e:Lii/b;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lii/b;->u(Lii/b;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lii/b$e;->e:Lii/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lii/b;->dismiss()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lii/b$e;->e:Lii/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lii/b;->v()Lii/b$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lii/b$b;->a()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

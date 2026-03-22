.class public final Lgi/b$d;
.super Lyd/d;
.source "DeleteConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgi/b;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lgi/b;


# direct methods
.method constructor <init>(Lgi/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lgi/b$d;->e:Lgi/b;

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
    iget-object p1, p0, Lgi/b$d;->e:Lgi/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgi/b;->u()Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lgi/b$d;->e:Lgi/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lfi/a;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

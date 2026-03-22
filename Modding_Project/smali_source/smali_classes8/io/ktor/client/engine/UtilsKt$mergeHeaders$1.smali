.class final Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/UtilsKt;->c(Lwr/f;Lxr/b;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lwr/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lwr/f;

.field final synthetic e:Lxr/b;


# direct methods
.method constructor <init>(Lwr/f;Lxr/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->d:Lwr/f;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->e:Lxr/b;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Lwr/g;)V
    .locals 1
    .param p1    # Lwr/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$buildHeaders"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->d:Lwr/f;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/ktor/util/StringValuesBuilderImpl;->e(Lyr/p;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->e:Lxr/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lxr/b;->c()Lwr/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lio/ktor/util/StringValuesBuilderImpl;->e(Lyr/p;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwr/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/UtilsKt$mergeHeaders$1;->b(Lwr/g;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

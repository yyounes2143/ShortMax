.class public final Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExceptionUtilsJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ExceptionUtilsJvmKt;->a(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExceptionUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt$safeCtor$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n*L\n1#1,101:1\n1#2:102\n79#3:103\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;->d:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 7
    .line 8
    iget-object v0, p0, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;->d:Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Ljava/lang/Throwable;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    :cond_0
    check-cast p1, Ljava/lang/Throwable;

    .line 49
    .line 50
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

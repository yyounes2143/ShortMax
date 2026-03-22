.class final Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExceptionUtilsJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ExceptionUtilsJvmKt;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;->d:Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;->b(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

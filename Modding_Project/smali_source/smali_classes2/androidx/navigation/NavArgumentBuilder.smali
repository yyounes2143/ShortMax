.class public final Landroidx/navigation/NavArgumentBuilder;
.super Ljava/lang/Object;
.source "NavDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _type:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation
.end field

.field private final builder:Landroidx/navigation/NavArgument$Builder;

.field private defaultValue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nullable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/navigation/NavArgument$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavArgument;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "builder.build()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->defaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNullable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavArgumentBuilder;->nullable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getType()Landroidx/navigation/NavType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->_type:Landroidx/navigation/NavType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "NavType has not been set on this builder."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final setDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavArgumentBuilder;->defaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/NavArgument$Builder;->setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setNullable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavArgumentBuilder;->nullable:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/NavArgument$Builder;->setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setType(Landroidx/navigation/NavType;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavType<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavArgumentBuilder;->_type:Landroidx/navigation/NavType;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigation/NavArgumentBuilder;->builder:Landroidx/navigation/NavArgument$Builder;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/navigation/NavArgument$Builder;->setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

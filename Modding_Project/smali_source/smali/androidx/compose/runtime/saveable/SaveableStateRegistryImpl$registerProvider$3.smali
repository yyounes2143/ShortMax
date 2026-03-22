.class public final Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;
.super Ljava/lang/Object;
.source "SaveableStateRegistry.kt"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $valueProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueProviders:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/MutableScatterMap;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProviders:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public unregister()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProviders:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProvider:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$valueProviders:Landroidx/collection/MutableScatterMap;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->$key:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

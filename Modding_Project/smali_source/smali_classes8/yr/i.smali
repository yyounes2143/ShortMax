.class public final Lyr/i;
.super Ljava/lang/Object;
.source "Collections.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Value:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TValue;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/util/CaseInsensitiveMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

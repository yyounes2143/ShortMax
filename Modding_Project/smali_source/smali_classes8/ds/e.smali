.class public final Lds/e;
.super Ljava/lang/Object;
.source "PipelineContext.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "io.ktor.internal.disable.sfg"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "true"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lds/e;->a:Z

    .line 14
    .line 15
    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lds/e;->a:Z

    .line 2
    .line 3
    return v0
.end method

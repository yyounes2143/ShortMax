.class public final Lgt/k;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lmt/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmt/a0;

    .line 2
    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmt/a0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lgt/k;->a:Lmt/a0;

    .line 9
    .line 10
    return-void
.end method

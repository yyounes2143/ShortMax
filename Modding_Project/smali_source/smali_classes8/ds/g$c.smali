.class public final Lds/g$c;
.super Lds/g;
.source "PipelinePhaseRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lds/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lds/g$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lds/g$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lds/g$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lds/g$c;->a:Lds/g$c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lds/g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.class public final Lm0/h;
.super Ljava/lang/Object;
.source "NullRequestData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lm0/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lm0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm0/h;->a:Lm0/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "coil.request.NullRequestData"

    .line 2
    .line 3
    return-object v0
.end method

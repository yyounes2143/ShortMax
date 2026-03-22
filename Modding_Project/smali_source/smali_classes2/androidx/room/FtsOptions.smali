.class public final Landroidx/room/FtsOptions;
.super Ljava/lang/Object;
.source "FtsOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/FtsOptions$MatchInfo;,
        Landroidx/room/FtsOptions$Order;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/room/FtsOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKENIZER_ICU:Ljava/lang/String; = "icu"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKENIZER_PORTER:Ljava/lang/String; = "porter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKENIZER_SIMPLE:Ljava/lang/String; = "simple"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKENIZER_UNICODE61:Ljava/lang/String; = "unicode61"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/FtsOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/room/FtsOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/room/FtsOptions;->INSTANCE:Landroidx/room/FtsOptions;

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

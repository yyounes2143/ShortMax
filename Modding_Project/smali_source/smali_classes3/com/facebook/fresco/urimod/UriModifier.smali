.class public final Lcom/facebook/fresco/urimod/UriModifier;
.super Ljava/lang/Object;
.source "UriModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/urimod/UriModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static INSTANCE:Lcom/facebook/fresco/urimod/UriModifierInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/urimod/UriModifier;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/urimod/UriModifier;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/urimod/UriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/UriModifier;

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/fresco/urimod/NopUriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/NopUriModifier;

    .line 9
    .line 10
    sput-object v0, Lcom/facebook/fresco/urimod/UriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/UriModifierInterface;

    .line 11
    .line 12
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

.class public final Lcom/applovin/shadow/okhttp3/OkHttp;
.super Ljava/lang/Object;
.source "OkHttp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/applovin/shadow/okhttp3/OkHttp;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERSION:Ljava/lang/String; = "4.12.0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/OkHttp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/OkHttp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/shadow/okhttp3/OkHttp;->INSTANCE:Lcom/applovin/shadow/okhttp3/OkHttp;

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

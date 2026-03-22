.class public final Lcom/startshorts/androidplayer/bean/act/H5Result;
.super Ljava/lang/Object;
.source "ActConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/startshorts/androidplayer/bean/act/H5Result;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_FAILED:Ljava/lang/String; = "{\"h5_type\":1, \"data\":{\"result\":0}}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_PAYMENT_REFRESH:Ljava/lang/String; = "{\"h5_type\":2}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_PAYMENT_SUCCEED:Ljava/lang/String; = "{\"h5_type\":2,\"data\":{\"type\":1}}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_RESTORE_SUCCEED:Ljava/lang/String; = "{\"h5_type\":2,\"data\":{\"type\":2}}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "{\"h5_type\":1, \"data\":{\"result\":1}}"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/H5Result;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/act/H5Result;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/H5Result;->INSTANCE:Lcom/startshorts/androidplayer/bean/act/H5Result;

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

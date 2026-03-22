.class public final Lcom/startshorts/androidplayer/bean/act/CallAppType;
.super Ljava/lang/Object;
.source "ActConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final ADVERTISEMENT:I = 0x1

.field public static final CLEAR_COOKIE:I = 0xd

.field public static final EXIT_WEB_VIEW:I = 0x5

.field public static final EXTERNAL_PAY:I = 0x10

.field public static final EXTERNAL_URL:I = 0x6

.field public static final INSTANCE:Lcom/startshorts/androidplayer/bean/act/CallAppType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final JUMP_URL:I = 0xf

.field public static final LOAD_FINISHED:I = 0xb

.field public static final NATIVE_PAGE:I = 0x2

.field public static final PURCHASE:I = 0x3

.field public static final QUERY_SKU_PRICE:I = 0xa

.field public static final RESTORE_ORDER:I = 0xe

.field public static final SHARE:I = 0x9

.field public static final SHORT_DRAMA:I = 0x7

.field public static final SUBSCRIPTION:I = 0x8

.field public static final TOKEN_EXPIRED:I = 0xc

.field public static final TRACKING:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/CallAppType;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/act/CallAppType;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/CallAppType;->INSTANCE:Lcom/startshorts/androidplayer/bean/act/CallAppType;

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

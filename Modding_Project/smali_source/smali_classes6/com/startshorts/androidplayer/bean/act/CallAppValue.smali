.class public final Lcom/startshorts/androidplayer/bean/act/CallAppValue;
.super Ljava/lang/Object;
.source "ActConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final ADVERTISEMENT_REWARD:I = 0x1

.field public static final CLOSE:Ljava/lang/String; = "1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/startshorts/androidplayer/bean/act/CallAppValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NATIVE_PAGE_SHORTS:I = 0x2

.field public static final NATIVE_PAGE_SUBS_DETAIL:I = 0x3

.field public static final NATIVE_PAGE_TOP_UP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/CallAppValue;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/act/CallAppValue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/CallAppValue;->INSTANCE:Lcom/startshorts/androidplayer/bean/act/CallAppValue;

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

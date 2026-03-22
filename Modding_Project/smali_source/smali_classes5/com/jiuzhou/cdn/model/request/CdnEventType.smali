.class public final Lcom/jiuzhou/cdn/model/request/CdnEventType;
.super Ljava/lang/Object;
.source "CdnEventType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/jiuzhou/cdn/model/request/CdnEventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CDN_DETECT_TIME:Ljava/lang/String; = "EVENT_VIDEO_ELAPSED_TIME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_BUFFER_END:Ljava/lang/String; = "EVENT_VIDEO_PLAY_BLOCK_END"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_BUFFER_START:Ljava/lang/String; = "EVENT_VIDEO_PLAY_BLOCK_START"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_FIRST_FRAME:Ljava/lang/String; = "EVENT_FIRST_FRAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_COMPLETE:Ljava/lang/String; = "EVENT_VIDEO_PLAY_COMPLETE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_END:Ljava/lang/String; = "EVENT_VIDEO_PLAY_END"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_FAILED:Ljava/lang/String; = "EVENT_VIDEO_PLAY_FAIL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_REAL_FAILED:Ljava/lang/String; = "EVENT_VIDEO_PLAY_REAL_FAIL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_RETRY:Ljava/lang/String; = "EVENT_VIDEO_PLAY_INTERRUPT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_PLAY_START:Ljava/lang/String; = "EVENT_VIDEO_PLAY_START"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIDEO_SEEK:Ljava/lang/String; = "EVENT_VIDEO_SEEK"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jiuzhou/cdn/model/request/CdnEventType;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jiuzhou/cdn/model/request/CdnEventType;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jiuzhou/cdn/model/request/CdnEventType;->INSTANCE:Lcom/jiuzhou/cdn/model/request/CdnEventType;

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

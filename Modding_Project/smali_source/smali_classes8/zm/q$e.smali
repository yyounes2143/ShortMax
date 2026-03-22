.class public final Lzm/q$e;
.super Lzm/q$d;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final p:Lzm/q$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm/q$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/q$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lzm/q$d$a;->g()Lzm/q$e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lzm/q$e;->p:Lzm/q$e;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Lzm/q$d$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lzm/q$d;-><init>(Lzm/q$d$a;Lzm/q$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$d$a;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$e;-><init>(Lzm/q$d$a;)V

    return-void
.end method

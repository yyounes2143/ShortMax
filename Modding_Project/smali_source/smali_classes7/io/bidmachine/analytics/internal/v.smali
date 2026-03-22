.class public final Lio/bidmachine/analytics/internal/v;
.super Lio/bidmachine/analytics/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/v$a;
    }
.end annotation


# static fields
.field public static final h:Lio/bidmachine/analytics/internal/v$a;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/v;->h:Lio/bidmachine/analytics/internal/v$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "aexs"

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/analytics/internal/v;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/io/File;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/v;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

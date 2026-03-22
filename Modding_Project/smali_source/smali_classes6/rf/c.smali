.class public final Lrf/c;
.super Ljava/lang/Object;
.source "NotificationNavigatorCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lrf/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrf/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lrf/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrf/c;->a:Lrf/c;

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
.method public final A(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final B(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final C(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final D(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public final E(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final F(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public final G(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lrf/c;->b:Z

    .line 3
    .line 4
    sput-boolean v0, Lrf/c;->d:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lrf/c;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 11
    .line 12
    sput-object v1, Lrf/c;->h:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v1, Lrf/c;->i:Ljava/lang/String;

    .line 15
    .line 16
    sput-boolean v0, Lrf/c;->j:Z

    .line 17
    .line 18
    sput-boolean v0, Lrf/c;->n:Z

    .line 19
    .line 20
    sput-boolean v0, Lrf/c;->o:Z

    .line 21
    .line 22
    sput-boolean v0, Lrf/c;->p:Z

    .line 23
    .line 24
    sput-boolean v0, Lrf/c;->m:Z

    .line 25
    .line 26
    sput-boolean v0, Lrf/c;->l:Z

    .line 27
    .line 28
    sput-boolean v0, Lrf/c;->k:Z

    .line 29
    .line 30
    sput-boolean v0, Lrf/c;->q:Z

    .line 31
    .line 32
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lrf/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lrf/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lrf/c;->f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lrf/c;->e:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lrf/c;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrf/c;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lrf/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lrf/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lrf/c;->f:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lrf/c;->e:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final v(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lrf/c;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final x(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrf/c;->p:Z

    .line 2
    .line 3
    return-void
.end method

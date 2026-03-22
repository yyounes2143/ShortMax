.class public final Lan/a;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lan/a$c;,
        Lan/a$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final c:Landroid/os/Handler;

.field private final d:Lzm/c;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lzm/c;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lan/a;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lan/a;->c:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p4, p0, Lan/a;->d:Lzm/c;

    .line 9
    .line 10
    iput-boolean p5, p0, Lan/a;->e:Z

    .line 11
    .line 12
    sget v0, Lcn/m0;->a:I

    .line 13
    .line 14
    const/16 v1, 0x1a

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v2, Lan/a$c;

    .line 19
    .line 20
    invoke-direct {v2, p2, p3}, Lan/a$c;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-object p2, p0, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 27
    .line 28
    :goto_0
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lo5/a;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p4}, Lzm/c;->a()Lzm/c$d;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    iget-object p4, p4, Lzm/c$d;->a:Landroid/media/AudioAttributes;

    .line 39
    .line 40
    invoke-static {p1, p4}, Lo5/e;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, p5}, Lo5/f;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/h;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lo5/h;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lan/a;->f:Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lan/a;->f:Ljava/lang/Object;

    .line 61
    .line 62
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lan/a$b;
    .locals 2

    .line 1
    new-instance v0, Lan/a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lan/a$b;-><init>(Lan/a;Lan/a$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public b()Lzm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lan/a;->d:Lzm/c;

    .line 2
    .line 3
    return-object v0
.end method

.method c()Landroid/media/AudioFocusRequest;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lan/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media/b;->a(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lan/a;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lan/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lan/a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lan/a;

    .line 12
    .line 13
    iget v1, p0, Lan/a;->a:I

    .line 14
    .line 15
    iget v3, p1, Lan/a;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lan/a;->e:Z

    .line 20
    .line 21
    iget-boolean v3, p1, Lan/a;->e:Z

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 26
    .line 27
    iget-object v3, p1, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 28
    .line 29
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lan/a;->c:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v3, p1, Lan/a;->c:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lan/a;->d:Lzm/c;

    .line 46
    .line 47
    iget-object p1, p1, Lan/a;->d:Lzm/c;

    .line 48
    .line 49
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v2

    .line 57
    :goto_0
    return v0
.end method

.method public f()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lan/a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lan/a;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lan/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    .line 9
    iget-object v2, p0, Lan/a;->c:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v3, p0, Lan/a;->d:Lzm/c;

    .line 12
    .line 13
    iget-boolean v4, p0, Lan/a;->e:Z

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

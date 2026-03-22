.class final Lcom/google/android/gms/internal/ads/zzalq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:J

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzalw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:Lcom/google/android/gms/internal/ads/zzalq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzj:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Ljava/util/HashMap;

.field private final zzl:Ljava/util/HashMap;

.field private zzm:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalq;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzalw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/internal/ads/zzalq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzc:Z

    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzd:J

    .line 22
    .line 23
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzg:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzk:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzl:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/internal/ads/zzalq;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzalw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/ads/zzalq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/zzalq;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, v12

    .line 5
    move-object v1, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move-object/from16 v8, p6

    .line 12
    .line 13
    move-object/from16 v9, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    move-object/from16 v11, p9

    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzalq;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalq;)V

    .line 20
    .line 21
    .line 22
    return-object v12
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalq;
    .locals 13

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/zzalq;

    .line 2
    .line 3
    const-string v0, "\r\n"

    .line 4
    .line 5
    const-string v1, "\n"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, " *\n *"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, " "

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "[ \t\\x0B\u000c\r]+"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, ""

    .line 40
    .line 41
    move-object v0, v12

    .line 42
    move-wide v3, v5

    .line 43
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzalq;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalq;)V

    .line 44
    .line 45
    .line 46
    return-object v12
.end method

.method private static zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcs;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcs;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcs;->zzr()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    return-object p0
.end method

.method private final zzj(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zza:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "p"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "div"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzh:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzd:J

    .line 26
    .line 27
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    move v2, v0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ge v2, v3, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/google/android/gms/internal/ads/zzalq;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v4, v0

    .line 85
    :cond_4
    :goto_1
    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzj(Ljava/util/TreeSet;Z)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return-void
.end method

.method private final zzk(JLjava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalq;->zzg(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zza:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "div"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzh:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 36
    .line 37
    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zza()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ge v1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzalq;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method private final zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v9, 0x1

    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzalq;->zzg(J)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_f

    .line 14
    .line 15
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzg:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eq v9, v3, :cond_1

    .line 24
    .line 25
    move-object v10, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object/from16 v10, p5

    .line 28
    .line 29
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzl:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_24

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzk:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v6, 0x0

    .line 77
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v6, v3, :cond_23

    .line 88
    .line 89
    move-object/from16 v11, p6

    .line 90
    .line 91
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/google/android/gms/internal/ads/zzcs;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-object/from16 v12, p4

    .line 101
    .line 102
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/google/android/gms/internal/ads/zzalu;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 112
    .line 113
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 114
    .line 115
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v13, v14, v8}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalw;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcs;->zzr()Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    check-cast v14, Landroid/text/SpannableStringBuilder;

    .line 126
    .line 127
    if-nez v14, :cond_4

    .line 128
    .line 129
    new-instance v14, Landroid/text/SpannableStringBuilder;

    .line 130
    .line 131
    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzcs;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 135
    .line 136
    .line 137
    :cond_4
    if-eqz v13, :cond_2

    .line 138
    .line 139
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    .line 140
    .line 141
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzh()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    const/16 v9, 0x21

    .line 146
    .line 147
    if-eq v4, v1, :cond_5

    .line 148
    .line 149
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 150
    .line 151
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzh()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v14, v4, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzM()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    .line 168
    .line 169
    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-interface {v14, v1, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzN()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    new-instance v1, Landroid/text/style/UnderlineSpan;

    .line 182
    .line 183
    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v14, v1, v6, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzL()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 196
    .line 197
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzd()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v14, v1, v6, v3, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 205
    .line 206
    .line 207
    :cond_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzK()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    .line 214
    .line 215
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzc()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-direct {v1, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v14, v1, v6, v3, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzG()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-eqz v1, :cond_a

    .line 230
    .line 231
    new-instance v1, Landroid/text/style/TypefaceSpan;

    .line 232
    .line 233
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzG()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-direct {v1, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v14, v1, v6, v3, v9}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzk()Lcom/google/android/gms/internal/ads/zzalp;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const/4 v4, 0x2

    .line 248
    if-eqz v1, :cond_f

    .line 249
    .line 250
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzk()Lcom/google/android/gms/internal/ads/zzalp;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzalp;->zza:I

    .line 258
    .line 259
    move-object/from16 v16, v2

    .line 260
    .line 261
    const/4 v2, -0x1

    .line 262
    if-ne v9, v2, :cond_d

    .line 263
    .line 264
    if-eq v7, v4, :cond_b

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    if-ne v7, v2, :cond_c

    .line 268
    .line 269
    :cond_b
    const/4 v2, 0x3

    .line 270
    goto :goto_3

    .line 271
    :cond_c
    const/4 v2, 0x1

    .line 272
    :goto_3
    move v9, v2

    .line 273
    const/4 v2, 0x1

    .line 274
    goto :goto_4

    .line 275
    :cond_d
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalp;->zzb:I

    .line 276
    .line 277
    :goto_4
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzalp;->zzc:I

    .line 278
    .line 279
    const/4 v7, -0x2

    .line 280
    if-ne v1, v7, :cond_e

    .line 281
    .line 282
    const/4 v1, 0x1

    .line 283
    :cond_e
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdb;

    .line 284
    .line 285
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzdb;-><init>(III)V

    .line 286
    .line 287
    .line 288
    const/16 v1, 0x21

    .line 289
    .line 290
    invoke-static {v14, v7, v6, v3, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_f
    move-object/from16 v16, v2

    .line 295
    .line 296
    :goto_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzg()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eq v1, v4, :cond_12

    .line 301
    .line 302
    const/4 v2, 0x3

    .line 303
    if-eq v1, v2, :cond_11

    .line 304
    .line 305
    const/4 v2, 0x4

    .line 306
    if-eq v1, v2, :cond_11

    .line 307
    .line 308
    :cond_10
    :goto_6
    const/4 v4, -0x1

    .line 309
    goto/16 :goto_c

    .line 310
    .line 311
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalo;

    .line 312
    .line 313
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzalo;-><init>()V

    .line 314
    .line 315
    .line 316
    const/16 v2, 0x21

    .line 317
    .line 318
    invoke-interface {v14, v1, v6, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_12
    :goto_7
    if-eqz v15, :cond_14

    .line 323
    .line 324
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 325
    .line 326
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalw;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    if-eqz v2, :cond_13

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalw;->zzg()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    const/4 v7, 0x1

    .line 339
    if-eq v2, v7, :cond_15

    .line 340
    .line 341
    :cond_13
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzalq;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_14
    const/4 v15, 0x0

    .line 345
    :cond_15
    if-eqz v15, :cond_10

    .line 346
    .line 347
    new-instance v2, Ljava/util/ArrayDeque;

    .line 348
    .line 349
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-interface {v2, v15}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_16
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-nez v7, :cond_18

    .line 360
    .line 361
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    check-cast v7, Lcom/google/android/gms/internal/ads/zzalq;

    .line 366
    .line 367
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 368
    .line 369
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 370
    .line 371
    invoke-static {v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalw;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    if-eqz v1, :cond_17

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalw;->zzg()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    const/4 v9, 0x3

    .line 382
    if-ne v1, v9, :cond_17

    .line 383
    .line 384
    move-object v1, v7

    .line 385
    goto :goto_9

    .line 386
    :cond_17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzalq;->zza()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    const/4 v9, -0x1

    .line 391
    add-int/2addr v1, v9

    .line 392
    :goto_8
    if-ltz v1, :cond_16

    .line 393
    .line 394
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-interface {v2, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    add-int/2addr v1, v9

    .line 402
    const/4 v4, 0x2

    .line 403
    goto :goto_8

    .line 404
    :cond_18
    const/4 v1, 0x0

    .line 405
    :goto_9
    if-eqz v1, :cond_10

    .line 406
    .line 407
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalq;->zza()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    const/4 v4, 0x1

    .line 412
    if-ne v2, v4, :cond_1b

    .line 413
    .line 414
    const/4 v2, 0x0

    .line 415
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzalq;->zzb:Ljava/lang/String;

    .line 420
    .line 421
    if-eqz v4, :cond_1b

    .line 422
    .line 423
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzalq;->zzb:Ljava/lang/String;

    .line 428
    .line 429
    sget-object v4, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 432
    .line 433
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalw;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    if-eqz v1, :cond_19

    .line 440
    .line 441
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalw;->zzf()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    :goto_a
    const/4 v4, -0x1

    .line 446
    goto :goto_b

    .line 447
    :cond_19
    const/4 v1, -0x1

    .line 448
    goto :goto_a

    .line 449
    :goto_b
    if-ne v1, v4, :cond_1a

    .line 450
    .line 451
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzalq;->zzf:Lcom/google/android/gms/internal/ads/zzalw;

    .line 452
    .line 453
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzalq;->zzj:[Ljava/lang/String;

    .line 454
    .line 455
    invoke-static {v7, v9, v8}, Lcom/google/android/gms/internal/ads/zzalv;->zza(Lcom/google/android/gms/internal/ads/zzalw;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalw;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    if-eqz v7, :cond_1a

    .line 460
    .line 461
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzalw;->zzf()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    :cond_1a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcz;

    .line 466
    .line 467
    invoke-direct {v7, v2, v1}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(Ljava/lang/String;I)V

    .line 468
    .line 469
    .line 470
    const/16 v1, 0x21

    .line 471
    .line 472
    invoke-interface {v14, v7, v6, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 473
    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_1b
    const/4 v4, -0x1

    .line 477
    const-string v1, "TtmlRenderUtil"

    .line 478
    .line 479
    const-string v2, "Skipping rubyText node without exactly one text child."

    .line 480
    .line 481
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :goto_c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzJ()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_1c

    .line 489
    .line 490
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcy;

    .line 491
    .line 492
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcy;-><init>()V

    .line 493
    .line 494
    .line 495
    const/16 v2, 0x21

    .line 496
    .line 497
    invoke-static {v14, v1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 498
    .line 499
    .line 500
    :cond_1c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zze()I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    const/high16 v2, 0x42c80000    # 100.0f

    .line 505
    .line 506
    const/4 v7, 0x1

    .line 507
    if-eq v1, v7, :cond_1f

    .line 508
    .line 509
    const/4 v7, 0x2

    .line 510
    if-eq v1, v7, :cond_1e

    .line 511
    .line 512
    const/4 v7, 0x3

    .line 513
    if-eq v1, v7, :cond_1d

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :cond_1d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zza()F

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    div-float/2addr v1, v2

    .line 521
    const/16 v7, 0x21

    .line 522
    .line 523
    invoke-static {v14, v1, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzda;->zza(Landroid/text/Spannable;FIII)V

    .line 524
    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_1e
    const/16 v7, 0x21

    .line 528
    .line 529
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 530
    .line 531
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zza()F

    .line 532
    .line 533
    .line 534
    move-result v9

    .line 535
    invoke-direct {v1, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 536
    .line 537
    .line 538
    invoke-static {v14, v1, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 539
    .line 540
    .line 541
    goto :goto_d

    .line 542
    :cond_1f
    const/16 v7, 0x21

    .line 543
    .line 544
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 545
    .line 546
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zza()F

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    float-to-int v9, v9

    .line 551
    const/4 v15, 0x1

    .line 552
    invoke-direct {v1, v9, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 553
    .line 554
    .line 555
    invoke-static {v14, v1, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 556
    .line 557
    .line 558
    :goto_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalq;->zza:Ljava/lang/String;

    .line 559
    .line 560
    const-string v3, "p"

    .line 561
    .line 562
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_22

    .line 567
    .line 568
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzb()F

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 573
    .line 574
    .line 575
    cmpl-float v1, v1, v3

    .line 576
    .line 577
    if-eqz v1, :cond_20

    .line 578
    .line 579
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzb()F

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 584
    .line 585
    mul-float/2addr v1, v3

    .line 586
    div-float/2addr v1, v2

    .line 587
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzj(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 588
    .line 589
    .line 590
    :cond_20
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzj()Landroid/text/Layout$Alignment;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    if-eqz v1, :cond_21

    .line 595
    .line 596
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzj()Landroid/text/Layout$Alignment;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 601
    .line 602
    .line 603
    :cond_21
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzi()Landroid/text/Layout$Alignment;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    if-eqz v1, :cond_22

    .line 608
    .line 609
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzi()Landroid/text/Layout$Alignment;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzg(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 614
    .line 615
    .line 616
    :cond_22
    move v1, v4

    .line 617
    move-object/from16 v2, v16

    .line 618
    .line 619
    const/4 v9, 0x1

    .line 620
    goto/16 :goto_1

    .line 621
    .line 622
    :cond_23
    move-object/from16 v12, p4

    .line 623
    .line 624
    move-object/from16 v11, p6

    .line 625
    .line 626
    goto/16 :goto_1

    .line 627
    .line 628
    :cond_24
    move-object/from16 v12, p4

    .line 629
    .line 630
    move-object/from16 v11, p6

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 633
    move v9, v2

    .line 634
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zza()I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-ge v9, v1, :cond_25

    .line 639
    .line 640
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    move-wide/from16 v2, p1

    .line 645
    .line 646
    move-object/from16 v4, p3

    .line 647
    .line 648
    move-object/from16 v5, p4

    .line 649
    .line 650
    move-object v6, v10

    .line 651
    move-object/from16 v7, p6

    .line 652
    .line 653
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzalq;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 654
    .line 655
    .line 656
    const/4 v1, 0x1

    .line 657
    add-int/2addr v9, v1

    .line 658
    goto :goto_e

    .line 659
    :cond_25
    :goto_f
    return-void
.end method

.method private final zzm(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p5

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzk:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzl:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalq;->zza:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "metadata"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzg:Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v9, 0x1

    .line 35
    if-eq v9, v4, :cond_1

    .line 36
    .line 37
    move-object v10, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object/from16 v10, p4

    .line 40
    .line 41
    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzc:Z

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalq;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalq;->zzb:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    const-string v3, "br"

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/16 v11, 0xa

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    if-nez p3, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalq;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzalq;->zzg(J)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_b

    .line 86
    .line 87
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/util/Map$Entry;

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcs;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcs;->zzr()Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    check-cast v4, Ljava/lang/CharSequence;

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    const-string v1, "p"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    const/4 v13, 0x0

    .line 147
    move v14, v13

    .line 148
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zza()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ge v14, v1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p0, v14}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(I)Lcom/google/android/gms/internal/ads/zzalq;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez p3, :cond_6

    .line 159
    .line 160
    if-eqz v12, :cond_7

    .line 161
    .line 162
    :cond_6
    move v4, v9

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move v4, v13

    .line 165
    :goto_4
    move-wide/from16 v2, p1

    .line 166
    .line 167
    move-object v5, v10

    .line 168
    move-object/from16 v6, p5

    .line 169
    .line 170
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzalq;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    if-eqz v12, :cond_a

    .line 177
    .line 178
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalq;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 187
    .line 188
    if-ltz v2, :cond_9

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const/16 v4, 0x20

    .line 195
    .line 196
    if-ne v3, v4, :cond_9

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_9
    if-ltz v2, :cond_a

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eq v2, v11, :cond_a

    .line 206
    .line 207
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/util/Map$Entry;

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Ljava/lang/String;

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcs;

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzr()Ljava/lang/CharSequence;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    check-cast v2, Ljava/lang/CharSequence;

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzalq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalq;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final zze(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzg:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v7, v0}, Lcom/google/android/gms/internal/ads/zzalq;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    new-instance v8, Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-wide v2, p1

    .line 19
    move-object v5, v7

    .line 20
    move-object v6, v8

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzalq;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    move-object v6, v7

    .line 27
    move-object v7, v8

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzalq;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 p3, 0x0

    .line 41
    move v1, p3

    .line 42
    :goto_0
    if-ge v1, p2, :cond_1

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/util/Pair;

    .line 49
    .line 50
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-static {v3, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    array-length v4, v3

    .line 66
    invoke-static {v3, p3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/google/android/gms/internal/ads/zzalu;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcs;

    .line 82
    .line 83
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcs;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 87
    .line 88
    .line 89
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalu;->zzb:F

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zzi(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 95
    .line 96
    .line 97
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalu;->zzc:F

    .line 98
    .line 99
    invoke-virtual {v4, v3, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 100
    .line 101
    .line 102
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalu;->zze:I

    .line 103
    .line 104
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzf(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 105
    .line 106
    .line 107
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalu;->zzf:F

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzk(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 110
    .line 111
    .line 112
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalu;->zzg:F

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzd(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 115
    .line 116
    .line 117
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 118
    .line 119
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzo(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Lcom/google/android/gms/internal/ads/zzcu;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result p5

    .line 144
    if-eqz p5, :cond_d

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p5

    .line 150
    check-cast p5, Ljava/util/Map$Entry;

    .line 151
    .line 152
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lcom/google/android/gms/internal/ads/zzalu;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p5

    .line 169
    check-cast p5, Lcom/google/android/gms/internal/ads/zzcs;

    .line 170
    .line 171
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcs;->zzr()Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    const-class v3, Lcom/google/android/gms/internal/ads/zzalo;

    .line 185
    .line 186
    invoke-virtual {v1, p3, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, [Lcom/google/android/gms/internal/ads/zzalo;

    .line 191
    .line 192
    array-length v3, v2

    .line 193
    move v4, p3

    .line 194
    :goto_3
    if-ge v4, v3, :cond_2

    .line 195
    .line 196
    aget-object v5, v2, v4

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    const-string v7, ""

    .line 207
    .line 208
    invoke-virtual {v1, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 209
    .line 210
    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_2
    move v2, p3

    .line 215
    :goto_4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const/16 v4, 0x20

    .line 220
    .line 221
    if-ge v2, v3, :cond_5

    .line 222
    .line 223
    add-int/lit8 v3, v2, 0x1

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-ne v5, v4, :cond_4

    .line 230
    .line 231
    move v5, v3

    .line 232
    :goto_5
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-ge v5, v6, :cond_3

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-ne v6, v4, :cond_3

    .line 243
    .line 244
    add-int/lit8 v5, v5, 0x1

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_3
    sub-int/2addr v5, v3

    .line 248
    if-lez v5, :cond_4

    .line 249
    .line 250
    add-int/2addr v5, v2

    .line 251
    invoke-virtual {v1, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_4
    move v2, v3

    .line 255
    goto :goto_4

    .line 256
    :cond_5
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-lez v2, :cond_6

    .line 261
    .line 262
    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-ne v2, v4, :cond_6

    .line 267
    .line 268
    const/4 v2, 0x1

    .line 269
    invoke-virtual {v1, p3, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 270
    .line 271
    .line 272
    :cond_6
    move v2, p3

    .line 273
    :goto_6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    add-int/lit8 v3, v3, -0x1

    .line 278
    .line 279
    const/16 v5, 0xa

    .line 280
    .line 281
    if-ge v2, v3, :cond_8

    .line 282
    .line 283
    add-int/lit8 v3, v2, 0x1

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-ne v6, v5, :cond_7

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-ne v5, v4, :cond_7

    .line 296
    .line 297
    add-int/lit8 v2, v2, 0x2

    .line 298
    .line 299
    invoke-virtual {v1, v3, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 300
    .line 301
    .line 302
    :cond_7
    move v2, v3

    .line 303
    goto :goto_6

    .line 304
    :cond_8
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-lez v2, :cond_9

    .line 309
    .line 310
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    add-int/lit8 v2, v2, -0x1

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-ne v2, v4, :cond_9

    .line 321
    .line 322
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    add-int/lit8 v2, v2, -0x1

    .line 327
    .line 328
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 333
    .line 334
    .line 335
    :cond_9
    move v2, p3

    .line 336
    :goto_7
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    add-int/lit8 v3, v3, -0x1

    .line 341
    .line 342
    if-ge v2, v3, :cond_b

    .line 343
    .line 344
    add-int/lit8 v3, v2, 0x1

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-ne v6, v4, :cond_a

    .line 351
    .line 352
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-ne v6, v5, :cond_a

    .line 357
    .line 358
    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 359
    .line 360
    .line 361
    :cond_a
    move v2, v3

    .line 362
    goto :goto_7

    .line 363
    :cond_b
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-lez v2, :cond_c

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    add-int/lit8 v2, v2, -0x1

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-ne v2, v5, :cond_c

    .line 380
    .line 381
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    add-int/lit8 v2, v2, -0x1

    .line 386
    .line 387
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 392
    .line 393
    .line 394
    :cond_c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:F

    .line 395
    .line 396
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:I

    .line 397
    .line 398
    invoke-virtual {p5, v1, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 399
    .line 400
    .line 401
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zze:I

    .line 402
    .line 403
    invoke-virtual {p5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzf(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 404
    .line 405
    .line 406
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzb:F

    .line 407
    .line 408
    invoke-virtual {p5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 409
    .line 410
    .line 411
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:F

    .line 412
    .line 413
    invoke-virtual {p5, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzk(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 414
    .line 415
    .line 416
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:F

    .line 417
    .line 418
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    .line 419
    .line 420
    invoke-virtual {p5, v1, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzn(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 421
    .line 422
    .line 423
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 424
    .line 425
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzo(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Lcom/google/android/gms/internal/ads/zzcu;

    .line 429
    .line 430
    .line 431
    move-result-object p5

    .line 432
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto/16 :goto_2

    .line 436
    .line 437
    :cond_d
    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzalq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzm:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzg(J)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zzd:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    move-wide v0, v2

    .line 20
    :cond_0
    cmp-long v4, v0, p1

    .line 21
    .line 22
    if-gtz v4, :cond_1

    .line 23
    .line 24
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 25
    .line 26
    cmp-long v6, v6, v2

    .line 27
    .line 28
    if-eqz v6, :cond_5

    .line 29
    .line 30
    :cond_1
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 35
    .line 36
    cmp-long v0, p1, v0

    .line 37
    .line 38
    if-ltz v0, :cond_5

    .line 39
    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    if-gtz v4, :cond_4

    .line 42
    .line 43
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalq;->zze:J

    .line 44
    .line 45
    cmp-long p1, p1, v1

    .line 46
    .line 47
    if-gez p1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return v0

    .line 51
    :cond_4
    move v5, v0

    .line 52
    :cond_5
    :goto_0
    return v5
.end method

.method public final zzh()[J
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzj(Ljava/util/TreeSet;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    add-int/lit8 v5, v1, 0x1

    .line 37
    .line 38
    aput-wide v3, v2, v1

    .line 39
    .line 40
    move v1, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method

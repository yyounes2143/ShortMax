.class public final Lcom/inmobi/media/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "b64String"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 15
    .line 16
    const-string v2, "event"

    .line 17
    .line 18
    invoke-static {p1, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_4

    .line 29
    .line 30
    const-string v2, "value"

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/inmobi/media/L3;->F()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-static {p1}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_4

    .line 48
    :cond_0
    const-string v2, "<this>"

    .line 49
    .line 50
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/util/BitSet;

    .line 54
    .line 55
    array-length v3, p1

    .line 56
    const/16 v4, 0x8

    .line 57
    .line 58
    mul-int/2addr v3, v4

    .line 59
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 60
    .line 61
    .line 62
    array-length v3, p1

    .line 63
    move v5, v1

    .line 64
    move v6, v5

    .line 65
    :goto_1
    if-ge v5, v3, :cond_3

    .line 66
    .line 67
    aget-byte v7, p1, v5

    .line 68
    .line 69
    move v8, v1

    .line 70
    :goto_2
    if-ge v8, v4, :cond_2

    .line 71
    .line 72
    int-to-byte v9, v8

    .line 73
    shr-int v9, v7, v9

    .line 74
    .line 75
    and-int/2addr v9, v0

    .line 76
    add-int/lit8 v10, v6, 0x1

    .line 77
    .line 78
    if-ne v9, v0, :cond_1

    .line 79
    .line 80
    move v9, v0

    .line 81
    goto :goto_3

    .line 82
    :cond_1
    move v9, v1

    .line 83
    :goto_3
    invoke-virtual {v2, v6, v9}, Ljava/util/BitSet;->set(IZ)V

    .line 84
    .line 85
    .line 86
    add-int/2addr v8, v0

    .line 87
    move v6, v10

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/2addr v5, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move-object p1, v2

    .line 92
    :goto_4
    iput-object p1, p0, Lcom/inmobi/media/a2;->a:Ljava/util/BitSet;

    .line 93
    .line 94
    :cond_4
    return-void
.end method

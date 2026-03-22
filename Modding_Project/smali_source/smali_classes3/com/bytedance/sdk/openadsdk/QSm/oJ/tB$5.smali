.class Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/component/cFZ/ZYk;

.field final synthetic ZYk:Ljava/io/File;

.field final synthetic ba:I

.field final synthetic cFZ:Ljava/lang/String;

.field final synthetic ex:Ljava/lang/String;

.field final synthetic oJ:Z

.field final synthetic so:Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/cFZ/ZYk;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->so:Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->oJ:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ZYk:Ljava/io/File;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ex:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->Pfn:Lcom/bytedance/sdk/component/cFZ/ZYk;

    .line 12
    .line 13
    iput p8, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ba:I

    .line 14
    .line 15
    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->cFZ:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->oJ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ZYk:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object v2, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->tB:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ex:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->Pfn:Lcom/bytedance/sdk/component/cFZ/ZYk;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/LpP;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Ljava/io/File;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->tB()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ZYk(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->ba:I

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, ", url="

    .line 98
    .line 99
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->cFZ:Ljava/lang/String;

    .line 100
    .line 101
    const-string v1, "unzip error: "

    .line 102
    .line 103
    const-string v3, "tp="

    .line 104
    .line 105
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "PlayableResManager"

    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB$5;->Pfn:Lcom/bytedance/sdk/component/cFZ/ZYk;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    .line 123
    :catchall_1
    return-void
.end method

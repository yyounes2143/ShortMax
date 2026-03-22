.class public Lcom/bytedance/bdtracker/w3;
.super Lcom/bytedance/bdtracker/b4;
.source ""


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "bav2b_click"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v2, v0, v1, v2}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/bdtracker/w3;->v:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bytedance/bdtracker/w3;->w:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/bytedance/bdtracker/w3;->x:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/bytedance/bdtracker/w3;->y:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/bytedance/bdtracker/w3;->z:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p10, p0, Lcom/bytedance/bdtracker/w3;->A:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p11, p0, Lcom/bytedance/bdtracker/w3;->B:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput p6, p0, Lcom/bytedance/bdtracker/w3;->C:I

    .line 23
    .line 24
    iput p7, p0, Lcom/bytedance/bdtracker/w3;->D:I

    .line 25
    .line 26
    iput p8, p0, Lcom/bytedance/bdtracker/w3;->E:I

    .line 27
    .line 28
    iput p9, p0, Lcom/bytedance/bdtracker/w3;->F:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->x:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "element_path"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->v:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "page_key"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->B:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Lorg/json/JSONArray;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/bytedance/bdtracker/w3;->B:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "positions"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->A:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Lorg/json/JSONArray;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/bytedance/bdtracker/w3;->A:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "texts"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    :cond_1
    iget v1, p0, Lcom/bytedance/bdtracker/w3;->C:I

    .line 69
    .line 70
    const-string v2, "element_width"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/bytedance/bdtracker/w3;->D:I

    .line 76
    .line 77
    const-string v2, "element_height"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/bytedance/bdtracker/w3;->E:I

    .line 83
    .line 84
    const-string v2, "touch_x"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/bytedance/bdtracker/w3;->F:I

    .line 90
    .line 91
    const-string v2, "touch_y"

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->w:Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "page_title"

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->y:Ljava/lang/String;

    .line 104
    .line 105
    const-string v2, "element_id"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/bytedance/bdtracker/w3;->z:Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "element_type"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    .line 122
    .line 123
    :cond_2
    return-void
.end method

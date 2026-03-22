.class Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;
.super Lcom/ss/ttm/player/TTPlayerConfiger$Value;
.source "TTPlayerConfiger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/TTPlayerConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringValue"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger$Value;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;->mValue:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;->mValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;->mValue:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

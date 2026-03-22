.class public interface abstract Lcom/ss/ttvideoengine/portrait/IPortrait;
.super Ljava/lang/Object;
.source "IPortrait.java"


# static fields
.field public static final EMPTY:Lcom/ss/ttvideoengine/portrait/IPortrait;

.field public static final ID_NETWORK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/portrait/IPortrait$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/portrait/IPortrait$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/portrait/IPortrait;->EMPTY:Lcom/ss/ttvideoengine/portrait/IPortrait;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

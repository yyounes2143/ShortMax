.class public Lio/bidmachine/ExternalUserId;
.super Ljava/lang/Object;
.source "ExternalUserId.java"


# instance fields
.field private final sourceId:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSourceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.class public final Lcom/inmobi/media/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/O9;


# instance fields
.field public final a:Lcom/inmobi/media/m4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/m4;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "errorCode"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/inmobi/media/p4;->a:Lcom/inmobi/media/m4;

    .line 15
    .line 16
    sget-object p1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p4;->a:Lcom/inmobi/media/m4;

    .line 2
    .line 3
    iget v0, v0, Lcom/inmobi/media/m4;->a:I

    .line 4
    .line 5
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p4;->a:Lcom/inmobi/media/m4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

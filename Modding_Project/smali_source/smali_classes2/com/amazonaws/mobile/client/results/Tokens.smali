.class public Lcom/amazonaws/mobile/client/results/Tokens;
.super Ljava/lang/Object;
.source "Tokens.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/results/Token;

.field private final b:Lcom/amazonaws/mobile/client/results/Token;

.field private final c:Lcom/amazonaws/mobile/client/results/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/mobile/client/results/Token;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/client/results/Token;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/client/results/Tokens;->a:Lcom/amazonaws/mobile/client/results/Token;

    .line 10
    .line 11
    new-instance p1, Lcom/amazonaws/mobile/client/results/Token;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/amazonaws/mobile/client/results/Token;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/Tokens;->b:Lcom/amazonaws/mobile/client/results/Token;

    .line 17
    .line 18
    new-instance p1, Lcom/amazonaws/mobile/client/results/Token;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Lcom/amazonaws/mobile/client/results/Token;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/Tokens;->c:Lcom/amazonaws/mobile/client/results/Token;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/results/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Tokens;->b:Lcom/amazonaws/mobile/client/results/Token;

    .line 2
    .line 3
    return-object v0
.end method

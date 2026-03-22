.class public Lcom/amazonaws/transform/JsonUnmarshallerContext;
.super Ljava/lang/Object;
.source "JsonUnmarshallerContext.java"


# instance fields
.field private final a:Lcom/amazonaws/util/json/AwsJsonReader;

.field private final b:Lcom/amazonaws/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a:Lcom/amazonaws/util/json/AwsJsonReader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->b:Lcom/amazonaws/http/HttpResponse;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a:Lcom/amazonaws/util/json/AwsJsonReader;

    .line 2
    .line 3
    return-object v0
.end method

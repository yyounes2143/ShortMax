.class public Lcom/facebook/soloader/SoLoaderULError;
.super Ljava/lang/UnsatisfiedLinkError;
.source "SoLoaderULError.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/soloader/SoLoaderULError;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/SoLoaderULError;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

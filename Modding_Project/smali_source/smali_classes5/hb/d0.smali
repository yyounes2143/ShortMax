.class public Lhb/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhb/u;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/d0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lhb/d0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/d0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/d0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/g1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

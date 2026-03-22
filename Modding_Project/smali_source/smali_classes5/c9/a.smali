.class public final Lc9/a;
.super Ljava/lang/Object;
.source "MessagingClientEventExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/a$a;
    }
.end annotation


# static fields
.field private static final b:Lc9/a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc9/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lc9/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc9/a$a;->a()Lc9/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lc9/a;->b:Lc9/a;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc9/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 5
    .line 6
    return-void
.end method

.method public static b()Lc9/a$a;
    .locals 1

    .line 1
    new-instance v0, Lc9/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lc9/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lc9/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/j0;->a(Ljava/lang/Object;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

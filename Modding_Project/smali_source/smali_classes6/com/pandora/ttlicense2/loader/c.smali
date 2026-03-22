.class public final synthetic Lcom/pandora/ttlicense2/loader/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

.field public final synthetic b:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

.field public final synthetic c:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/c;->a:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/c;->b:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/c;->c:Ljava/io/IOException;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/c;->a:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/c;->b:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/c;->c:Ljava/io/IOException;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader;->b(Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

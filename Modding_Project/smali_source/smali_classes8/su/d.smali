.class public final Lsu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# instance fields
.field public final synthetic a:Lna/b;


# direct methods
.method public constructor <init>(Lna/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu/d;->a:Lna/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final d(Lna/b;ILcom/hades/aar/storage/base/UploadStatus;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lna/b;->f()Lna/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, v0}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final e(Lna/b;ILjava/lang/Exception;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lna/b;->f()Lna/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, ""

    .line 20
    .line 21
    :cond_0
    invoke-interface {p0, p1, v0, p2}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final a(IJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsu/d;->a:Lna/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lna/b;->e()Lna/c;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lma/g;->a:Lma/g;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "uploadFile onProgressChanged "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, " bytesCurrent("

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ") bytesTotal("

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ") onProgressChangedListener==null"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b(ILjava/lang/Exception;)V
    .locals 5

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lsu/d;->a:Lna/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lna/b;->f()Lna/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, ") ex("

    .line 13
    .line 14
    const-string v2, "uploadFile onError id("

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lma/g;->a:Lma/g;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ") onStateChangedListener == null"

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    sget-object v0, Lma/g;->a:Lma/g;

    .line 52
    .line 53
    iget-object v3, p0, Lsu/d;->a:Lna/b;

    .line 54
    .line 55
    new-instance v4, Lsu/c;

    .line 56
    .line 57
    invoke-direct {v4, v3, p1, p2}, Lsu/c;-><init>(Lna/b;ILjava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v4}, Lma/g;->e(Lma/g;Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x29

    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final c(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 6

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lsu/d;->a:Lna/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lna/b;->f()Lna/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, ") TransferState("

    .line 13
    .line 14
    const-string v2, "uploadFile onStateChanged id("

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lma/g;->a:Lma/g;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "),onStateChangedListener == null"

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    sget-object v0, Lsu/a;->a:[I

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    aget v0, v0, v3

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq v0, v3, :cond_5

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    if-eq v0, v3, :cond_4

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    if-eq v0, v3, :cond_3

    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    if-eq v0, v3, :cond_2

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    if-eq v0, v3, :cond_1

    .line 69
    .line 70
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->UNKNOWN:Lcom/hades/aar/storage/base/UploadStatus;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->PAUSED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->CANCELED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->UPLOADING:Lcom/hades/aar/storage/base/UploadStatus;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->COMPLETED:Lcom/hades/aar/storage/base/UploadStatus;

    .line 86
    .line 87
    :goto_0
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 88
    .line 89
    if-ne v3, p2, :cond_6

    .line 90
    .line 91
    sget-object v0, Lma/g;->a:Lma/g;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "), not callback"

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    sget-object v3, Lma/g;->a:Lma/g;

    .line 121
    .line 122
    iget-object v4, p0, Lsu/d;->a:Lna/b;

    .line 123
    .line 124
    new-instance v5, Lsu/b;

    .line 125
    .line 126
    invoke-direct {v5, v4, p1, v0}, Lsu/b;-><init>(Lna/b;ILcom/hades/aar/storage/base/UploadStatus;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v5}, Lma/g;->e(Lma/g;Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const/16 p1, 0x29

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v3, p1}, Lma/g;->d(Lma/g;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :goto_1
    return-void
.end method

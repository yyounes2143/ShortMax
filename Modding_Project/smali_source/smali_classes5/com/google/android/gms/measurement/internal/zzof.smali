.class public final Lcom/google/android/gms/measurement/internal/zzof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.0.0"


# static fields
.field static final zza:Lcom/google/common/collect/ImmutableList;

.field public static final synthetic zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v10, "AuthorizePurpose7"

    .line 2
    .line 3
    const-string v11, "PurposeDiagnostics"

    .line 4
    .line 5
    const-string v0, "Purpose7"

    .line 6
    .line 7
    const-string v1, "CmpSdkID"

    .line 8
    .line 9
    const-string v2, "PublisherCC"

    .line 10
    .line 11
    const-string v3, "PublisherRestrictions1"

    .line 12
    .line 13
    const-string v4, "PublisherRestrictions3"

    .line 14
    .line 15
    const-string v5, "PublisherRestrictions4"

    .line 16
    .line 17
    const-string v6, "PublisherRestrictions7"

    .line 18
    .line 19
    const-string v7, "AuthorizePurpose1"

    .line 20
    .line 21
    const-string v8, "AuthorizePurpose3"

    .line 22
    .line 23
    const-string v9, "AuthorizePurpose4"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v24

    .line 29
    const-string v22, "Purpose3"

    .line 30
    .line 31
    const-string v23, "Purpose4"

    .line 32
    .line 33
    const-string v12, "Version"

    .line 34
    .line 35
    const-string v13, "GoogleConsent"

    .line 36
    .line 37
    const-string v14, "VendorConsent"

    .line 38
    .line 39
    const-string v15, "VendorLegitimateInterest"

    .line 40
    .line 41
    const-string v16, "gdprApplies"

    .line 42
    .line 43
    const-string v17, "EnableAdvertiserConsentMode"

    .line 44
    .line 45
    const-string v18, "PolicyVersion"

    .line 46
    .line 47
    const-string v19, "PurposeConsents"

    .line 48
    .line 49
    const-string v20, "PurposeOneTreatment"

    .line 50
    .line 51
    const-string v21, "Purpose1"

    .line 52
    .line 53
    invoke-static/range {v12 .. v24}, Lcom/google/common/collect/ImmutableList;->G(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzof;->zza:Lcom/google/common/collect/ImmutableList;

    .line 58
    .line 59
    return-void
.end method

.method static zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    return-object v0
.end method

.method static zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return p0

    .line 7
    :catch_0
    return v0
.end method

.method static final zzc(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 21
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zze(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v16

    const/16 v15, 0x32

    const/4 v14, 0x1

    if-lez v16, :cond_2

    move/from16 v0, p7

    if-ne v0, v14, :cond_1

    move/from16 v1, p6

    if-eq v1, v14, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move/from16 v17, v14

    move/from16 v18, v17

    goto :goto_2

    :cond_1
    move/from16 v1, p6

    .line 1
    :goto_0
    aput-char v15, p4, v16

    :goto_1
    move/from16 v18, v0

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v1, p6

    move/from16 v0, p7

    goto :goto_1

    :goto_2
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, v19

    .line 2
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zza:Lcom/google/android/gms/internal/measurement/zzkq;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x33

    goto/16 :goto_8

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    move-object/from16 v15, p0

    if-ne v15, v0, :cond_7

    move/from16 v0, p9

    const/4 v1, 0x1

    move-object/from16 v14, p3

    move-object/from16 v13, p10

    if-ne v0, v1, :cond_6

    .line 3
    invoke-virtual {v14, v13}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v16, :cond_4

    aget-char v0, p4, v16

    const/16 v12, 0x32

    if-eq v0, v12, :cond_4

    const/16 v0, 0x31

    aput-char v0, p4, v16

    :cond_4
    return v1

    :cond_5
    const/16 v12, 0x32

    move-object/from16 v11, p1

    move/from16 v19, v1

    goto :goto_5

    :cond_6
    :goto_3
    const/16 v12, 0x32

    goto :goto_4

    :cond_7
    move-object/from16 v14, p3

    move/from16 v0, p9

    move-object/from16 v13, p10

    const/4 v1, 0x1

    goto :goto_3

    :goto_4
    move-object/from16 v11, p1

    move/from16 v19, v0

    .line 4
    :goto_5
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x30

    if-nez v0, :cond_8

    :goto_6
    move v0, v2

    goto/16 :goto_8

    .line 5
    :cond_8
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzoe;

    if-nez v0, :cond_9

    goto :goto_6

    .line 6
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v20, 0x38

    if-eqz v0, :cond_10

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, v16

    .line 7
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 8
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzg(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 9
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzh(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_c
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 10
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzc:Lcom/google/android/gms/internal/measurement/zzkq;

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 11
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzh(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 12
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzg(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_e
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move v14, v12

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 13
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    if-ne v0, v1, :cond_f

    :goto_7
    move/from16 v0, v20

    goto :goto_8

    :cond_f
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 14
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzh(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_10
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 15
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzc:Lcom/google/android/gms/internal/measurement/zzkq;

    if-ne v0, v1, :cond_12

    goto :goto_7

    :goto_8
    if-lez v16, :cond_11

    .line 16
    aget-char v1, p4, v16

    const/16 v2, 0x32

    if-eq v1, v2, :cond_11

    aput-char v0, p4, v16

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, p8

    move/from16 v9, v19

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 17
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzg(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method public static final zzd(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/util/Map;
    .locals 34

    move-object/from16 v15, p1

    if-nez p14, :cond_0

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->q()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 2
    invoke-virtual {v15, v14}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkq;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzkp;->zzd:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 3
    invoke-virtual {v15, v13}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkq;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzkp;->zze:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 4
    invoke-virtual {v15, v12}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkq;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzkp;->zzh:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 5
    invoke-virtual {v15, v11}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkq;

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    const-string v5, "Version"

    const-string v6, "2"

    .line 7
    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    const-string v16, "1"

    const-string v17, "0"

    const/4 v10, 0x1

    move/from16 v9, p12

    if-eq v10, v9, :cond_1

    move-object/from16 v5, v17

    goto :goto_0

    :cond_1
    move-object/from16 v5, v16

    :goto_0
    const-string v6, "VendorConsent"

    .line 8
    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    move/from16 v8, p13

    if-eq v10, v8, :cond_2

    move-object/from16 v5, v17

    goto :goto_1

    :cond_2
    move-object/from16 v5, v16

    :goto_1
    const-string v6, "VendorLegitimateInterest"

    .line 9
    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    move/from16 v7, p6

    if-eq v7, v10, :cond_3

    move-object/from16 v5, v17

    goto :goto_2

    :cond_3
    move-object/from16 v5, v16

    :goto_2
    const-string v6, "gdprApplies"

    .line 10
    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    move/from16 v6, p5

    if-eq v6, v10, :cond_4

    move-object/from16 v5, v17

    goto :goto_3

    :cond_4
    move-object/from16 v5, v16

    :goto_3
    const-string v10, "EnableAdvertiserConsentMode"

    .line 11
    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    .line 12
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "PolicyVersion"

    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    .line 13
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "CmpSdkID"

    invoke-virtual {v4, v10, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    move/from16 v10, p8

    const/4 v5, 0x1

    if-eq v10, v5, :cond_5

    move-object/from16 v5, v17

    goto :goto_4

    :cond_5
    move-object/from16 v5, v16

    :goto_4
    const-string v6, "PurposeOneTreatment"

    .line 14
    invoke-virtual {v4, v6, v5}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    const-string v5, "PublisherCC"

    move-object/from16 v6, p9

    .line 15
    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v4

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v0

    goto :goto_5

    .line 17
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkq;->zzd:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v0

    .line 19
    :goto_5
    const-string v5, "PublisherRestrictions1"

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v4, v5, v0}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v0

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    goto :goto_6

    .line 23
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzd:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    .line 25
    :goto_6
    const-string v4, "PublisherRestrictions3"

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v0

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    goto :goto_7

    .line 29
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzd:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    .line 31
    :goto_7
    const-string v2, "PublisherRestrictions4"

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v0

    if-eqz v3, :cond_9

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    goto :goto_8

    .line 35
    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zzd:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()I

    move-result v1

    .line 37
    :goto_8
    const-string v2, "PublisherRestrictions7"

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v5

    const/16 v18, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    const/16 v19, 0x1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v19, v11

    move-object/from16 v11, p10

    move-object/from16 v22, v12

    move-object/from16 v12, p11

    move-object/from16 v23, v13

    move/from16 v13, p12

    move-object/from16 v24, v14

    move/from16 v14, p13

    move/from16 v15, v18

    .line 40
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzf(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v26

    const/4 v15, 0x1

    move-object/from16 v0, v23

    .line 41
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzf(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    .line 42
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzf(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    .line 43
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzf(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v32

    const-string v27, "Purpose3"

    const-string v25, "Purpose1"

    .line 44
    const-string v29, "Purpose4"

    const-string v31, "Purpose7"

    invoke-static/range {v25 .. v32}, Lcom/google/common/collect/ImmutableMap;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    move-object/from16 v1, v20

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$a;->i(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v15

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v33, v15

    move/from16 v15, v18

    .line 46
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzc(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_a

    move-object/from16 v18, v17

    goto :goto_9

    :cond_a
    move-object/from16 v18, v16

    :goto_9
    const/16 v20, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, v20

    .line 47
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzc(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_b

    move-object/from16 v20, v17

    goto :goto_a

    :cond_b
    move-object/from16 v20, v16

    :goto_a
    const/16 v21, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, v21

    .line 48
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzc(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_c

    move-object/from16 v21, v17

    goto :goto_b

    :cond_c
    move-object/from16 v21, v16

    :goto_b
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, v22

    .line 49
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zzc(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_c

    :cond_d
    move-object/from16 v17, v16

    :goto_c
    new-instance v0, Ljava/lang/String;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "AuthorizePurpose3"

    const-string v2, "AuthorizePurpose1"

    .line 50
    const-string v3, "AuthorizePurpose4"

    const-string v4, "AuthorizePurpose7"

    const-string v5, "PurposeDiagnostics"

    move-object/from16 p0, v2

    move-object/from16 p1, v18

    move-object/from16 p2, v1

    move-object/from16 p3, v20

    move-object/from16 p4, v3

    move-object/from16 p5, v21

    move-object/from16 p6, v4

    move-object/from16 p7, v17

    move-object/from16 p8, v5

    move-object/from16 p9, v0

    invoke-static/range {p0 .. p9}, Lcom/google/common/collect/ImmutableMap;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    move-object/from16 v1, v33

    .line 51
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$a;->i(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$a;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$a;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static final zze(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzb:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 3
    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzd:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    return v0

    .line 14
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zze:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    return v0

    .line 20
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkp;->zzh:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    return v0

    .line 26
    :cond_3
    const/4 v0, -0x1

    .line 27
    return v0
.end method

.method private static final zzf(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lt v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    move-object v2, p11

    .line 26
    invoke-virtual {p11, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    :goto_0
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-lt v2, v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    move-object/from16 v2, p12

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method private static final zzg(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 16

    .line 1
    const/4 v15, 0x1

    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move/from16 v5, p5

    .line 13
    .line 14
    move/from16 v6, p6

    .line 15
    .line 16
    move/from16 v7, p7

    .line 17
    .line 18
    move/from16 v8, p8

    .line 19
    .line 20
    move/from16 v9, p9

    .line 21
    .line 22
    move-object/from16 v10, p10

    .line 23
    .line 24
    move-object/from16 v11, p11

    .line 25
    .line 26
    move-object/from16 v12, p12

    .line 27
    .line 28
    move/from16 v13, p13

    .line 29
    .line 30
    move/from16 v14, p14

    .line 31
    .line 32
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zze(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x32

    .line 38
    .line 39
    if-nez p13, :cond_0

    .line 40
    .line 41
    const/16 v3, 0x34

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ge v3, v4, :cond_2

    .line 53
    .line 54
    const/16 v3, 0x30

    .line 55
    .line 56
    :goto_0
    if-lez v0, :cond_1

    .line 57
    .line 58
    aget-char v4, p4, v0

    .line 59
    .line 60
    if-eq v4, v2, :cond_1

    .line 61
    .line 62
    aput-char v3, p4, v0

    .line 63
    .line 64
    :cond_1
    return v1

    .line 65
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    move-object/from16 v4, p11

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/16 v4, 0x31

    .line 78
    .line 79
    if-ne v3, v4, :cond_3

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    :cond_3
    if-lez v0, :cond_5

    .line 83
    .line 84
    aget-char v5, p4, v0

    .line 85
    .line 86
    if-eq v5, v2, :cond_5

    .line 87
    .line 88
    if-ne v3, v4, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/16 v4, 0x36

    .line 92
    .line 93
    :goto_1
    aput-char v4, p4, v0

    .line 94
    .line 95
    :cond_5
    return v1
.end method

.method private static final zzh(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 16

    .line 1
    const/4 v15, 0x1

    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move/from16 v5, p5

    .line 13
    .line 14
    move/from16 v6, p6

    .line 15
    .line 16
    move/from16 v7, p7

    .line 17
    .line 18
    move/from16 v8, p8

    .line 19
    .line 20
    move/from16 v9, p9

    .line 21
    .line 22
    move-object/from16 v10, p10

    .line 23
    .line 24
    move-object/from16 v11, p11

    .line 25
    .line 26
    move-object/from16 v12, p12

    .line 27
    .line 28
    move/from16 v13, p13

    .line 29
    .line 30
    move/from16 v14, p14

    .line 31
    .line 32
    invoke-static/range {v0 .. v15}, Lcom/google/android/gms/measurement/internal/zzof;->zze(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x32

    .line 38
    .line 39
    if-nez p14, :cond_0

    .line 40
    .line 41
    const/16 v3, 0x35

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ge v3, v4, :cond_2

    .line 53
    .line 54
    const/16 v3, 0x30

    .line 55
    .line 56
    :goto_0
    if-lez v0, :cond_1

    .line 57
    .line 58
    aget-char v4, p4, v0

    .line 59
    .line 60
    if-eq v4, v2, :cond_1

    .line 61
    .line 62
    aput-char v3, p4, v0

    .line 63
    .line 64
    :cond_1
    return v1

    .line 65
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzkp;->zza()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    move-object/from16 v4, p12

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/16 v4, 0x31

    .line 78
    .line 79
    if-ne v3, v4, :cond_3

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    :cond_3
    if-lez v0, :cond_5

    .line 83
    .line 84
    aget-char v5, p4, v0

    .line 85
    .line 86
    if-eq v5, v2, :cond_5

    .line 87
    .line 88
    if-ne v3, v4, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/16 v4, 0x37

    .line 92
    .line 93
    :goto_1
    aput-char v4, p4, v0

    .line 94
    .line 95
    :cond_5
    return v1
.end method

.method private static final zzi(Lcom/google/android/gms/internal/measurement/zzkp;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzkq;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkq;->zzd:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p2

    .line 5
    invoke-virtual {p2, p0, v0}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkq;

    .line 10
    .line 11
    return-object v0
.end method

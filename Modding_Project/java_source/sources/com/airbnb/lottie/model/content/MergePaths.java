package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieFeatureFlag;
import com.airbnb.lottie.i;
import d1.f;
import t0.l;
import z0.c;
/* loaded from: classes2.dex */
public class MergePaths implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4556a;

    /* renamed from: b  reason: collision with root package name */
    private final MergePathsMode f4557b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4558c;

    /* loaded from: classes2.dex */
    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i10) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return MERGE;
                            }
                            return EXCLUDE_INTERSECTIONS;
                        }
                        return INTERSECT;
                    }
                    return SUBTRACT;
                }
                return ADD;
            }
            return MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z10) {
        this.f4556a = str;
        this.f4557b = mergePathsMode;
        this.f4558c = z10;
    }

    @Override // z0.c
    @Nullable
    public t0.c a(LottieDrawable lottieDrawable, i iVar, com.airbnb.lottie.model.layer.a aVar) {
        if (!lottieDrawable.i0(LottieFeatureFlag.MergePathsApi19)) {
            f.c("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new l(this);
    }

    public MergePathsMode b() {
        return this.f4557b;
    }

    public String c() {
        return this.f4556a;
    }

    public boolean d() {
        return this.f4558c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f4557b + '}';
    }
}

package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class InAppMessageParams {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f6490a;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final Set f6491a = new HashSet();

        @NonNull
        public Builder addAllInAppMessageCategoriesToShow() {
            this.f6491a.add(2);
            return this;
        }

        @NonNull
        public Builder addInAppMessageCategoryToShow(int i10) {
            this.f6491a.add(Integer.valueOf(i10));
            return this;
        }

        @NonNull
        public InAppMessageParams build() {
            return new InAppMessageParams(this.f6491a, null);
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface InAppMessageCategoryId {
        public static final int TRANSACTIONAL = 2;
        public static final int UNKNOWN_IN_APP_MESSAGE_CATEGORY_ID = 0;
    }

    /* synthetic */ InAppMessageParams(Set set, zzcq zzcqVar) {
        this.f6490a = new ArrayList(Collections.unmodifiableList(new ArrayList(set)));
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList a() {
        return this.f6490a;
    }
}

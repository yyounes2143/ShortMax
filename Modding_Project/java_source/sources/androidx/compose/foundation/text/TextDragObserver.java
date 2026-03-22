package androidx.compose.foundation.text;

import kotlin.Metadata;
/* compiled from: LongPressTextDragObserver.kt */
@Metadata
/* loaded from: classes.dex */
public interface TextDragObserver {
    void onCancel();

    /* renamed from: onDown-k-4lQ0M */
    void mo760onDownk4lQ0M(long j10);

    /* renamed from: onDrag-k-4lQ0M */
    void mo761onDragk4lQ0M(long j10);

    /* renamed from: onStart-k-4lQ0M */
    void mo762onStartk4lQ0M(long j10);

    void onStop();

    void onUp();
}

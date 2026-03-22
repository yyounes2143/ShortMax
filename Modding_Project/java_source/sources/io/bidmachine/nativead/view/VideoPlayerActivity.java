package io.bidmachine.nativead.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.view.CircleCountdownView;
/* loaded from: classes8.dex */
public class VideoPlayerActivity extends Activity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

    /* renamed from: a  reason: collision with root package name */
    private int f58008a;

    /* renamed from: b  reason: collision with root package name */
    private VideoView f58009b;

    /* renamed from: c  reason: collision with root package name */
    private c f58010c;

    /* loaded from: classes8.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoPlayerActivity.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                VideoPlayerActivity.this.getWindow().clearFlags(128);
            } catch (Exception e10) {
                io.bidmachine.core.a.m(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public interface c {
        void a(int i10, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i10;
        if (this.f58010c != null) {
            if (this.f58009b.isPlaying()) {
                i10 = this.f58009b.getCurrentPosition();
            } else {
                i10 = 0;
            }
            this.f58010c.a(i10, false);
        }
        d();
    }

    private void d() {
        runOnUiThread(new b());
        finish();
    }

    public static Intent e(@NonNull Context context, @NonNull String str, int i10) {
        Intent intent = new Intent(context, VideoPlayerActivity.class);
        intent.putExtra("io.bidmachine.fileUri", str);
        intent.putExtra("io.bidmachine.seekTo", i10);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String f() {
        return String.format("VideoPlayerActivity started, position: %s", Integer.valueOf(this.f58008a));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        c cVar = this.f58010c;
        if (cVar != null) {
            cVar.a(0, true);
        }
        d();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("io.bidmachine.fileUri");
        this.f58008a = intent.getIntExtra("io.bidmachine.seekTo", 0);
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.nativead.view.i
            @Override // hr.b
            public final Object get() {
                String f10;
                f10 = VideoPlayerActivity.this.f();
                return f10;
            }
        });
        if (stringExtra == null) {
            return;
        }
        this.f58010c = MediaView.B;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f58009b = new VideoView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f58009b.setLayoutParams(layoutParams);
        this.f58009b.setOnCompletionListener(this);
        this.f58009b.setOnPreparedListener(this);
        this.f58009b.setVideoPath(stringExtra);
        relativeLayout.addView(this.f58009b);
        float C = io.bidmachine.core.g.C(this);
        int round = Math.round(24.0f * C);
        int round2 = Math.round(C * 8.0f);
        CircleCountdownView circleCountdownView = new CircleCountdownView(this);
        circleCountdownView.setColors(sm.a.f66381a, sm.a.f66383c);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(round, round);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        layoutParams2.setMargins(round2, round2, round2, round2);
        circleCountdownView.setImage(sm.a.a("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="));
        circleCountdownView.setLayoutParams(layoutParams2);
        circleCountdownView.setOnClickListener(new a());
        relativeLayout.addView(circleCountdownView);
        setContentView(relativeLayout);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        d();
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView = this.f58009b;
        if (videoView != null && videoView.canSeekForward()) {
            this.f58009b.seekTo(this.f58008a);
            this.f58009b.start();
        }
    }
}

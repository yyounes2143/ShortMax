package androidx.compose.ui.input.key;

import androidx.compose.ui.ExperimentalComposeUiApi;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Key.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class Key {
    private final long keyCode;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unknown = Key_androidKt.Key(0);
    private static final long SoftLeft = Key_androidKt.Key(1);
    private static final long SoftRight = Key_androidKt.Key(2);
    private static final long Home = Key_androidKt.Key(3);
    private static final long Back = Key_androidKt.Key(4);
    private static final long Help = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME);
    private static final long NavigatePrevious = Key_androidKt.Key(260);
    private static final long NavigateNext = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE);
    private static final long NavigateIn = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC);
    private static final long NavigateOut = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE);
    private static final long SystemNavigationUp = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN);
    private static final long SystemNavigationDown = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL);
    private static final long SystemNavigationLeft = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS);
    private static final long SystemNavigationRight = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS);
    private static final long Call = Key_androidKt.Key(5);
    private static final long EndCall = Key_androidKt.Key(6);
    private static final long DirectionUp = Key_androidKt.Key(19);
    private static final long DirectionDown = Key_androidKt.Key(20);
    private static final long DirectionLeft = Key_androidKt.Key(21);
    private static final long DirectionRight = Key_androidKt.Key(22);
    private static final long DirectionCenter = Key_androidKt.Key(23);
    private static final long DirectionUpLeft = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME);
    private static final long DirectionDownLeft = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME);
    private static final long DirectionUpRight = Key_androidKt.Key(270);
    private static final long DirectionDownRight = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME);
    private static final long VolumeUp = Key_androidKt.Key(24);
    private static final long VolumeDown = Key_androidKt.Key(25);
    private static final long Power = Key_androidKt.Key(26);
    private static final long Camera = Key_androidKt.Key(27);
    private static final long Clear = Key_androidKt.Key(28);
    private static final long Zero = Key_androidKt.Key(7);
    private static final long One = Key_androidKt.Key(8);
    private static final long Two = Key_androidKt.Key(9);
    private static final long Three = Key_androidKt.Key(10);
    private static final long Four = Key_androidKt.Key(11);
    private static final long Five = Key_androidKt.Key(12);
    private static final long Six = Key_androidKt.Key(13);
    private static final long Seven = Key_androidKt.Key(14);
    private static final long Eight = Key_androidKt.Key(15);
    private static final long Nine = Key_androidKt.Key(16);
    private static final long Plus = Key_androidKt.Key(81);
    private static final long Minus = Key_androidKt.Key(69);
    private static final long Multiply = Key_androidKt.Key(17);
    private static final long Equals = Key_androidKt.Key(70);
    private static final long Pound = Key_androidKt.Key(18);
    private static final long A = Key_androidKt.Key(29);
    private static final long B = Key_androidKt.Key(30);
    private static final long C = Key_androidKt.Key(31);
    private static final long D = Key_androidKt.Key(32);
    private static final long E = Key_androidKt.Key(33);
    private static final long F = Key_androidKt.Key(34);
    private static final long G = Key_androidKt.Key(35);
    private static final long H = Key_androidKt.Key(36);
    private static final long I = Key_androidKt.Key(37);
    private static final long J = Key_androidKt.Key(38);
    private static final long K = Key_androidKt.Key(39);
    private static final long L = Key_androidKt.Key(40);
    private static final long M = Key_androidKt.Key(41);
    private static final long N = Key_androidKt.Key(42);
    private static final long O = Key_androidKt.Key(43);
    private static final long P = Key_androidKt.Key(44);
    private static final long Q = Key_androidKt.Key(45);
    private static final long R = Key_androidKt.Key(46);
    private static final long S = Key_androidKt.Key(47);
    private static final long T = Key_androidKt.Key(48);
    private static final long U = Key_androidKt.Key(49);
    private static final long V = Key_androidKt.Key(50);
    private static final long W = Key_androidKt.Key(51);
    private static final long X = Key_androidKt.Key(52);
    private static final long Y = Key_androidKt.Key(53);
    private static final long Z = Key_androidKt.Key(54);
    private static final long Comma = Key_androidKt.Key(55);
    private static final long Period = Key_androidKt.Key(56);
    private static final long AltLeft = Key_androidKt.Key(57);
    private static final long AltRight = Key_androidKt.Key(58);
    private static final long ShiftLeft = Key_androidKt.Key(59);
    private static final long ShiftRight = Key_androidKt.Key(60);
    private static final long Tab = Key_androidKt.Key(61);
    private static final long Spacebar = Key_androidKt.Key(62);
    private static final long Symbol = Key_androidKt.Key(63);
    private static final long Browser = Key_androidKt.Key(64);
    private static final long Envelope = Key_androidKt.Key(65);
    private static final long Enter = Key_androidKt.Key(66);
    private static final long Backspace = Key_androidKt.Key(67);
    private static final long Delete = Key_androidKt.Key(112);
    private static final long Escape = Key_androidKt.Key(111);
    private static final long CtrlLeft = Key_androidKt.Key(113);
    private static final long CtrlRight = Key_androidKt.Key(114);
    private static final long CapsLock = Key_androidKt.Key(115);
    private static final long ScrollLock = Key_androidKt.Key(116);
    private static final long MetaLeft = Key_androidKt.Key(117);
    private static final long MetaRight = Key_androidKt.Key(118);
    private static final long Function = Key_androidKt.Key(119);
    private static final long PrintScreen = Key_androidKt.Key(120);
    private static final long Break = Key_androidKt.Key(121);
    private static final long MoveHome = Key_androidKt.Key(122);
    private static final long MoveEnd = Key_androidKt.Key(123);
    private static final long Insert = Key_androidKt.Key(124);
    private static final long Cut = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE);
    private static final long Copy = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC);
    private static final long Paste = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS);
    private static final long Grave = Key_androidKt.Key(68);
    private static final long LeftBracket = Key_androidKt.Key(71);
    private static final long RightBracket = Key_androidKt.Key(72);
    private static final long Slash = Key_androidKt.Key(76);
    private static final long Backslash = Key_androidKt.Key(73);
    private static final long Semicolon = Key_androidKt.Key(74);
    private static final long Apostrophe = Key_androidKt.Key(75);
    private static final long At = Key_androidKt.Key(77);
    private static final long Number = Key_androidKt.Key(78);
    private static final long HeadsetHook = Key_androidKt.Key(79);
    private static final long Focus = Key_androidKt.Key(80);
    private static final long Menu = Key_androidKt.Key(82);
    private static final long Notification = Key_androidKt.Key(83);
    private static final long Search = Key_androidKt.Key(84);
    private static final long PageUp = Key_androidKt.Key(92);
    private static final long PageDown = Key_androidKt.Key(93);
    private static final long PictureSymbols = Key_androidKt.Key(94);
    private static final long SwitchCharset = Key_androidKt.Key(95);
    private static final long ButtonA = Key_androidKt.Key(96);
    private static final long ButtonB = Key_androidKt.Key(97);
    private static final long ButtonC = Key_androidKt.Key(98);
    private static final long ButtonX = Key_androidKt.Key(99);
    private static final long ButtonY = Key_androidKt.Key(100);
    private static final long ButtonZ = Key_androidKt.Key(101);
    private static final long ButtonL1 = Key_androidKt.Key(102);
    private static final long ButtonR1 = Key_androidKt.Key(103);
    private static final long ButtonL2 = Key_androidKt.Key(104);
    private static final long ButtonR2 = Key_androidKt.Key(105);
    private static final long ButtonThumbLeft = Key_androidKt.Key(106);
    private static final long ButtonThumbRight = Key_androidKt.Key(107);
    private static final long ButtonStart = Key_androidKt.Key(108);
    private static final long ButtonSelect = Key_androidKt.Key(109);
    private static final long ButtonMode = Key_androidKt.Key(110);
    private static final long Button1 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION);
    private static final long Button2 = Key_androidKt.Key(189);
    private static final long Button3 = Key_androidKt.Key(190);
    private static final long Button4 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED);
    private static final long Button5 = Key_androidKt.Key(192);
    private static final long Button6 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT);
    private static final long Button7 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY);
    private static final long Button8 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO);
    private static final long Button9 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE);
    private static final long Button10 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY);
    private static final long Button11 = Key_androidKt.Key(198);
    private static final long Button12 = Key_androidKt.Key(199);
    private static final long Button13 = Key_androidKt.Key(200);
    private static final long Button14 = Key_androidKt.Key(201);
    private static final long Button15 = Key_androidKt.Key(202);
    private static final long Button16 = Key_androidKt.Key(203);
    private static final long Forward = Key_androidKt.Key(125);
    private static final long F1 = Key_androidKt.Key(131);
    private static final long F2 = Key_androidKt.Key(132);
    private static final long F3 = Key_androidKt.Key(133);
    private static final long F4 = Key_androidKt.Key(134);
    private static final long F5 = Key_androidKt.Key(135);
    private static final long F6 = Key_androidKt.Key(136);
    private static final long F7 = Key_androidKt.Key(137);
    private static final long F8 = Key_androidKt.Key(138);
    private static final long F9 = Key_androidKt.Key(139);
    private static final long F10 = Key_androidKt.Key(140);
    private static final long F11 = Key_androidKt.Key(141);
    private static final long F12 = Key_androidKt.Key(142);
    private static final long NumLock = Key_androidKt.Key(143);
    private static final long NumPad0 = Key_androidKt.Key(144);
    private static final long NumPad1 = Key_androidKt.Key(145);
    private static final long NumPad2 = Key_androidKt.Key(146);
    private static final long NumPad3 = Key_androidKt.Key(147);
    private static final long NumPad4 = Key_androidKt.Key(148);
    private static final long NumPad5 = Key_androidKt.Key(149);
    private static final long NumPad6 = Key_androidKt.Key(150);
    private static final long NumPad7 = Key_androidKt.Key(151);
    private static final long NumPad8 = Key_androidKt.Key(152);
    private static final long NumPad9 = Key_androidKt.Key(153);
    private static final long NumPadDivide = Key_androidKt.Key(154);
    private static final long NumPadMultiply = Key_androidKt.Key(155);
    private static final long NumPadSubtract = Key_androidKt.Key(156);
    private static final long NumPadAdd = Key_androidKt.Key(157);
    private static final long NumPadDot = Key_androidKt.Key(158);
    private static final long NumPadComma = Key_androidKt.Key(159);
    private static final long NumPadEnter = Key_androidKt.Key(160);
    private static final long NumPadEquals = Key_androidKt.Key(161);
    private static final long NumPadLeftParenthesis = Key_androidKt.Key(162);
    private static final long NumPadRightParenthesis = Key_androidKt.Key(163);
    private static final long MediaPlay = Key_androidKt.Key(126);
    private static final long MediaPause = Key_androidKt.Key(127);
    private static final long MediaPlayPause = Key_androidKt.Key(85);
    private static final long MediaStop = Key_androidKt.Key(86);
    private static final long MediaRecord = Key_androidKt.Key(130);
    private static final long MediaNext = Key_androidKt.Key(87);
    private static final long MediaPrevious = Key_androidKt.Key(88);
    private static final long MediaRewind = Key_androidKt.Key(89);
    private static final long MediaFastForward = Key_androidKt.Key(90);
    private static final long MediaClose = Key_androidKt.Key(128);
    private static final long MediaAudioTrack = Key_androidKt.Key(222);
    private static final long MediaEject = Key_androidKt.Key(129);
    private static final long MediaTopMenu = Key_androidKt.Key(226);
    private static final long MediaSkipForward = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME);
    private static final long MediaSkipBackward = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME);
    private static final long MediaStepForward = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME);
    private static final long MediaStepBackward = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME);
    private static final long MicrophoneMute = Key_androidKt.Key(91);
    private static final long VolumeMute = Key_androidKt.Key(164);
    private static final long Info = Key_androidKt.Key(165);
    private static final long ChannelUp = Key_androidKt.Key(166);
    private static final long ChannelDown = Key_androidKt.Key(167);
    private static final long ZoomIn = Key_androidKt.Key(IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION);
    private static final long ZoomOut = Key_androidKt.Key(169);
    private static final long Tv = Key_androidKt.Key(170);
    private static final long Window = Key_androidKt.Key(171);
    private static final long Guide = Key_androidKt.Key(172);
    private static final long Dvr = Key_androidKt.Key(173);
    private static final long Bookmark = Key_androidKt.Key(174);
    private static final long Captions = Key_androidKt.Key(175);
    private static final long Settings = Key_androidKt.Key(176);
    private static final long TvPower = Key_androidKt.Key(177);
    private static final long TvInput = Key_androidKt.Key(178);
    private static final long SetTopBoxPower = Key_androidKt.Key(179);
    private static final long SetTopBoxInput = Key_androidKt.Key(180);
    private static final long AvReceiverPower = Key_androidKt.Key(181);
    private static final long AvReceiverInput = Key_androidKt.Key(182);
    private static final long ProgramRed = Key_androidKt.Key(183);
    private static final long ProgramGreen = Key_androidKt.Key(184);
    private static final long ProgramYellow = Key_androidKt.Key(185);
    private static final long ProgramBlue = Key_androidKt.Key(186);
    private static final long AppSwitch = Key_androidKt.Key(187);
    private static final long LanguageSwitch = Key_androidKt.Key(204);
    private static final long MannerMode = Key_androidKt.Key(205);
    private static final long Toggle2D3D = Key_androidKt.Key(206);
    private static final long Contacts = Key_androidKt.Key(207);
    private static final long Calendar = Key_androidKt.Key(208);
    private static final long Music = Key_androidKt.Key(209);
    private static final long Calculator = Key_androidKt.Key(210);
    private static final long ZenkakuHankaru = Key_androidKt.Key(211);
    private static final long Eisu = Key_androidKt.Key(212);
    private static final long Muhenkan = Key_androidKt.Key(213);
    private static final long Henkan = Key_androidKt.Key(214);
    private static final long KatakanaHiragana = Key_androidKt.Key(215);
    private static final long Yen = Key_androidKt.Key(216);
    private static final long Ro = Key_androidKt.Key(217);
    private static final long Kana = Key_androidKt.Key(218);
    private static final long Assist = Key_androidKt.Key(219);
    private static final long BrightnessDown = Key_androidKt.Key(220);
    private static final long BrightnessUp = Key_androidKt.Key(221);
    private static final long Sleep = Key_androidKt.Key(223);
    private static final long WakeUp = Key_androidKt.Key(224);
    private static final long SoftSleep = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE);
    private static final long Pairing = Key_androidKt.Key(225);
    private static final long LastChannel = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE);
    private static final long TvDataService = Key_androidKt.Key(230);
    private static final long VoiceAssist = Key_androidKt.Key(231);
    private static final long TvRadioService = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_CATEGORY);
    private static final long TvTeletext = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID);
    private static final long TvNumberEntry = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST);
    private static final long TvTerrestrialAnalog = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL);
    private static final long TvTerrestrialDigital = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_CONST_DEPTH);
    private static final long TvSatellite = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS);
    private static final long TvSatelliteBs = Key_androidKt.Key(238);
    private static final long TvSatelliteCs = Key_androidKt.Key(VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X);
    private static final long TvSatelliteService = Key_androidKt.Key(240);
    private static final long TvNetwork = Key_androidKt.Key(241);
    private static final long TvAntennaCable = Key_androidKt.Key(242);
    private static final long TvInputHdmi1 = Key_androidKt.Key(243);
    private static final long TvInputHdmi2 = Key_androidKt.Key(244);
    private static final long TvInputHdmi3 = Key_androidKt.Key(245);
    private static final long TvInputHdmi4 = Key_androidKt.Key(246);
    private static final long TvInputComposite1 = Key_androidKt.Key(247);
    private static final long TvInputComposite2 = Key_androidKt.Key(248);
    private static final long TvInputComponent1 = Key_androidKt.Key(249);
    private static final long TvInputComponent2 = Key_androidKt.Key(250);
    private static final long TvInputVga1 = Key_androidKt.Key(251);
    private static final long TvAudioDescription = Key_androidKt.Key(252);
    private static final long TvAudioDescriptionMixingVolumeUp = Key_androidKt.Key(253);
    private static final long TvAudioDescriptionMixingVolumeDown = Key_androidKt.Key(254);
    private static final long TvZoomMode = Key_androidKt.Key(255);
    private static final long TvContentsMenu = Key_androidKt.Key(256);
    private static final long TvMediaContextMenu = Key_androidKt.Key(257);
    private static final long TvTimerProgramming = Key_androidKt.Key(258);
    private static final long StemPrimary = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
    private static final long Stem1 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME);
    private static final long Stem2 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME);
    private static final long Stem3 = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME);
    private static final long AllApps = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER);
    private static final long Refresh = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL);
    private static final long ThumbsUp = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS);
    private static final long ThumbsDown = Key_androidKt.Key(287);
    private static final long ProfileSwitch = Key_androidKt.Key(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE);

    /* compiled from: Key.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getA-EK5gGoQ  reason: not valid java name */
        public final long m2772getAEK5gGoQ() {
            return Key.A;
        }

        /* renamed from: getAllApps-EK5gGoQ  reason: not valid java name */
        public final long m2773getAllAppsEK5gGoQ() {
            return Key.AllApps;
        }

        /* renamed from: getAltLeft-EK5gGoQ  reason: not valid java name */
        public final long m2774getAltLeftEK5gGoQ() {
            return Key.AltLeft;
        }

        /* renamed from: getAltRight-EK5gGoQ  reason: not valid java name */
        public final long m2775getAltRightEK5gGoQ() {
            return Key.AltRight;
        }

        /* renamed from: getApostrophe-EK5gGoQ  reason: not valid java name */
        public final long m2776getApostropheEK5gGoQ() {
            return Key.Apostrophe;
        }

        /* renamed from: getAppSwitch-EK5gGoQ  reason: not valid java name */
        public final long m2777getAppSwitchEK5gGoQ() {
            return Key.AppSwitch;
        }

        /* renamed from: getAssist-EK5gGoQ  reason: not valid java name */
        public final long m2778getAssistEK5gGoQ() {
            return Key.Assist;
        }

        /* renamed from: getAt-EK5gGoQ  reason: not valid java name */
        public final long m2779getAtEK5gGoQ() {
            return Key.At;
        }

        /* renamed from: getAvReceiverInput-EK5gGoQ  reason: not valid java name */
        public final long m2780getAvReceiverInputEK5gGoQ() {
            return Key.AvReceiverInput;
        }

        /* renamed from: getAvReceiverPower-EK5gGoQ  reason: not valid java name */
        public final long m2781getAvReceiverPowerEK5gGoQ() {
            return Key.AvReceiverPower;
        }

        /* renamed from: getB-EK5gGoQ  reason: not valid java name */
        public final long m2782getBEK5gGoQ() {
            return Key.B;
        }

        /* renamed from: getBack-EK5gGoQ  reason: not valid java name */
        public final long m2783getBackEK5gGoQ() {
            return Key.Back;
        }

        /* renamed from: getBackslash-EK5gGoQ  reason: not valid java name */
        public final long m2784getBackslashEK5gGoQ() {
            return Key.Backslash;
        }

        /* renamed from: getBackspace-EK5gGoQ  reason: not valid java name */
        public final long m2785getBackspaceEK5gGoQ() {
            return Key.Backspace;
        }

        /* renamed from: getBookmark-EK5gGoQ  reason: not valid java name */
        public final long m2786getBookmarkEK5gGoQ() {
            return Key.Bookmark;
        }

        /* renamed from: getBreak-EK5gGoQ  reason: not valid java name */
        public final long m2787getBreakEK5gGoQ() {
            return Key.Break;
        }

        /* renamed from: getBrightnessDown-EK5gGoQ  reason: not valid java name */
        public final long m2788getBrightnessDownEK5gGoQ() {
            return Key.BrightnessDown;
        }

        /* renamed from: getBrightnessUp-EK5gGoQ  reason: not valid java name */
        public final long m2789getBrightnessUpEK5gGoQ() {
            return Key.BrightnessUp;
        }

        /* renamed from: getBrowser-EK5gGoQ  reason: not valid java name */
        public final long m2790getBrowserEK5gGoQ() {
            return Key.Browser;
        }

        /* renamed from: getButton1-EK5gGoQ  reason: not valid java name */
        public final long m2791getButton1EK5gGoQ() {
            return Key.Button1;
        }

        /* renamed from: getButton10-EK5gGoQ  reason: not valid java name */
        public final long m2792getButton10EK5gGoQ() {
            return Key.Button10;
        }

        /* renamed from: getButton11-EK5gGoQ  reason: not valid java name */
        public final long m2793getButton11EK5gGoQ() {
            return Key.Button11;
        }

        /* renamed from: getButton12-EK5gGoQ  reason: not valid java name */
        public final long m2794getButton12EK5gGoQ() {
            return Key.Button12;
        }

        /* renamed from: getButton13-EK5gGoQ  reason: not valid java name */
        public final long m2795getButton13EK5gGoQ() {
            return Key.Button13;
        }

        /* renamed from: getButton14-EK5gGoQ  reason: not valid java name */
        public final long m2796getButton14EK5gGoQ() {
            return Key.Button14;
        }

        /* renamed from: getButton15-EK5gGoQ  reason: not valid java name */
        public final long m2797getButton15EK5gGoQ() {
            return Key.Button15;
        }

        /* renamed from: getButton16-EK5gGoQ  reason: not valid java name */
        public final long m2798getButton16EK5gGoQ() {
            return Key.Button16;
        }

        /* renamed from: getButton2-EK5gGoQ  reason: not valid java name */
        public final long m2799getButton2EK5gGoQ() {
            return Key.Button2;
        }

        /* renamed from: getButton3-EK5gGoQ  reason: not valid java name */
        public final long m2800getButton3EK5gGoQ() {
            return Key.Button3;
        }

        /* renamed from: getButton4-EK5gGoQ  reason: not valid java name */
        public final long m2801getButton4EK5gGoQ() {
            return Key.Button4;
        }

        /* renamed from: getButton5-EK5gGoQ  reason: not valid java name */
        public final long m2802getButton5EK5gGoQ() {
            return Key.Button5;
        }

        /* renamed from: getButton6-EK5gGoQ  reason: not valid java name */
        public final long m2803getButton6EK5gGoQ() {
            return Key.Button6;
        }

        /* renamed from: getButton7-EK5gGoQ  reason: not valid java name */
        public final long m2804getButton7EK5gGoQ() {
            return Key.Button7;
        }

        /* renamed from: getButton8-EK5gGoQ  reason: not valid java name */
        public final long m2805getButton8EK5gGoQ() {
            return Key.Button8;
        }

        /* renamed from: getButton9-EK5gGoQ  reason: not valid java name */
        public final long m2806getButton9EK5gGoQ() {
            return Key.Button9;
        }

        /* renamed from: getButtonA-EK5gGoQ  reason: not valid java name */
        public final long m2807getButtonAEK5gGoQ() {
            return Key.ButtonA;
        }

        /* renamed from: getButtonB-EK5gGoQ  reason: not valid java name */
        public final long m2808getButtonBEK5gGoQ() {
            return Key.ButtonB;
        }

        /* renamed from: getButtonC-EK5gGoQ  reason: not valid java name */
        public final long m2809getButtonCEK5gGoQ() {
            return Key.ButtonC;
        }

        /* renamed from: getButtonL1-EK5gGoQ  reason: not valid java name */
        public final long m2810getButtonL1EK5gGoQ() {
            return Key.ButtonL1;
        }

        /* renamed from: getButtonL2-EK5gGoQ  reason: not valid java name */
        public final long m2811getButtonL2EK5gGoQ() {
            return Key.ButtonL2;
        }

        /* renamed from: getButtonMode-EK5gGoQ  reason: not valid java name */
        public final long m2812getButtonModeEK5gGoQ() {
            return Key.ButtonMode;
        }

        /* renamed from: getButtonR1-EK5gGoQ  reason: not valid java name */
        public final long m2813getButtonR1EK5gGoQ() {
            return Key.ButtonR1;
        }

        /* renamed from: getButtonR2-EK5gGoQ  reason: not valid java name */
        public final long m2814getButtonR2EK5gGoQ() {
            return Key.ButtonR2;
        }

        /* renamed from: getButtonSelect-EK5gGoQ  reason: not valid java name */
        public final long m2815getButtonSelectEK5gGoQ() {
            return Key.ButtonSelect;
        }

        /* renamed from: getButtonStart-EK5gGoQ  reason: not valid java name */
        public final long m2816getButtonStartEK5gGoQ() {
            return Key.ButtonStart;
        }

        /* renamed from: getButtonThumbLeft-EK5gGoQ  reason: not valid java name */
        public final long m2817getButtonThumbLeftEK5gGoQ() {
            return Key.ButtonThumbLeft;
        }

        /* renamed from: getButtonThumbRight-EK5gGoQ  reason: not valid java name */
        public final long m2818getButtonThumbRightEK5gGoQ() {
            return Key.ButtonThumbRight;
        }

        /* renamed from: getButtonX-EK5gGoQ  reason: not valid java name */
        public final long m2819getButtonXEK5gGoQ() {
            return Key.ButtonX;
        }

        /* renamed from: getButtonY-EK5gGoQ  reason: not valid java name */
        public final long m2820getButtonYEK5gGoQ() {
            return Key.ButtonY;
        }

        /* renamed from: getButtonZ-EK5gGoQ  reason: not valid java name */
        public final long m2821getButtonZEK5gGoQ() {
            return Key.ButtonZ;
        }

        /* renamed from: getC-EK5gGoQ  reason: not valid java name */
        public final long m2822getCEK5gGoQ() {
            return Key.C;
        }

        /* renamed from: getCalculator-EK5gGoQ  reason: not valid java name */
        public final long m2823getCalculatorEK5gGoQ() {
            return Key.Calculator;
        }

        /* renamed from: getCalendar-EK5gGoQ  reason: not valid java name */
        public final long m2824getCalendarEK5gGoQ() {
            return Key.Calendar;
        }

        /* renamed from: getCall-EK5gGoQ  reason: not valid java name */
        public final long m2825getCallEK5gGoQ() {
            return Key.Call;
        }

        /* renamed from: getCamera-EK5gGoQ  reason: not valid java name */
        public final long m2826getCameraEK5gGoQ() {
            return Key.Camera;
        }

        /* renamed from: getCapsLock-EK5gGoQ  reason: not valid java name */
        public final long m2827getCapsLockEK5gGoQ() {
            return Key.CapsLock;
        }

        /* renamed from: getCaptions-EK5gGoQ  reason: not valid java name */
        public final long m2828getCaptionsEK5gGoQ() {
            return Key.Captions;
        }

        /* renamed from: getChannelDown-EK5gGoQ  reason: not valid java name */
        public final long m2829getChannelDownEK5gGoQ() {
            return Key.ChannelDown;
        }

        /* renamed from: getChannelUp-EK5gGoQ  reason: not valid java name */
        public final long m2830getChannelUpEK5gGoQ() {
            return Key.ChannelUp;
        }

        /* renamed from: getClear-EK5gGoQ  reason: not valid java name */
        public final long m2831getClearEK5gGoQ() {
            return Key.Clear;
        }

        /* renamed from: getComma-EK5gGoQ  reason: not valid java name */
        public final long m2832getCommaEK5gGoQ() {
            return Key.Comma;
        }

        /* renamed from: getContacts-EK5gGoQ  reason: not valid java name */
        public final long m2833getContactsEK5gGoQ() {
            return Key.Contacts;
        }

        /* renamed from: getCopy-EK5gGoQ  reason: not valid java name */
        public final long m2834getCopyEK5gGoQ() {
            return Key.Copy;
        }

        /* renamed from: getCtrlLeft-EK5gGoQ  reason: not valid java name */
        public final long m2835getCtrlLeftEK5gGoQ() {
            return Key.CtrlLeft;
        }

        /* renamed from: getCtrlRight-EK5gGoQ  reason: not valid java name */
        public final long m2836getCtrlRightEK5gGoQ() {
            return Key.CtrlRight;
        }

        /* renamed from: getCut-EK5gGoQ  reason: not valid java name */
        public final long m2837getCutEK5gGoQ() {
            return Key.Cut;
        }

        /* renamed from: getD-EK5gGoQ  reason: not valid java name */
        public final long m2838getDEK5gGoQ() {
            return Key.D;
        }

        /* renamed from: getDelete-EK5gGoQ  reason: not valid java name */
        public final long m2839getDeleteEK5gGoQ() {
            return Key.Delete;
        }

        /* renamed from: getDirectionCenter-EK5gGoQ  reason: not valid java name */
        public final long m2840getDirectionCenterEK5gGoQ() {
            return Key.DirectionCenter;
        }

        /* renamed from: getDirectionDown-EK5gGoQ  reason: not valid java name */
        public final long m2841getDirectionDownEK5gGoQ() {
            return Key.DirectionDown;
        }

        /* renamed from: getDirectionDownLeft-EK5gGoQ  reason: not valid java name */
        public final long m2842getDirectionDownLeftEK5gGoQ() {
            return Key.DirectionDownLeft;
        }

        /* renamed from: getDirectionDownRight-EK5gGoQ  reason: not valid java name */
        public final long m2843getDirectionDownRightEK5gGoQ() {
            return Key.DirectionDownRight;
        }

        /* renamed from: getDirectionLeft-EK5gGoQ  reason: not valid java name */
        public final long m2844getDirectionLeftEK5gGoQ() {
            return Key.DirectionLeft;
        }

        /* renamed from: getDirectionRight-EK5gGoQ  reason: not valid java name */
        public final long m2845getDirectionRightEK5gGoQ() {
            return Key.DirectionRight;
        }

        /* renamed from: getDirectionUp-EK5gGoQ  reason: not valid java name */
        public final long m2846getDirectionUpEK5gGoQ() {
            return Key.DirectionUp;
        }

        /* renamed from: getDirectionUpLeft-EK5gGoQ  reason: not valid java name */
        public final long m2847getDirectionUpLeftEK5gGoQ() {
            return Key.DirectionUpLeft;
        }

        /* renamed from: getDirectionUpRight-EK5gGoQ  reason: not valid java name */
        public final long m2848getDirectionUpRightEK5gGoQ() {
            return Key.DirectionUpRight;
        }

        /* renamed from: getDvr-EK5gGoQ  reason: not valid java name */
        public final long m2849getDvrEK5gGoQ() {
            return Key.Dvr;
        }

        /* renamed from: getE-EK5gGoQ  reason: not valid java name */
        public final long m2850getEEK5gGoQ() {
            return Key.E;
        }

        /* renamed from: getEight-EK5gGoQ  reason: not valid java name */
        public final long m2851getEightEK5gGoQ() {
            return Key.Eight;
        }

        /* renamed from: getEisu-EK5gGoQ  reason: not valid java name */
        public final long m2852getEisuEK5gGoQ() {
            return Key.Eisu;
        }

        /* renamed from: getEndCall-EK5gGoQ  reason: not valid java name */
        public final long m2853getEndCallEK5gGoQ() {
            return Key.EndCall;
        }

        /* renamed from: getEnter-EK5gGoQ  reason: not valid java name */
        public final long m2854getEnterEK5gGoQ() {
            return Key.Enter;
        }

        /* renamed from: getEnvelope-EK5gGoQ  reason: not valid java name */
        public final long m2855getEnvelopeEK5gGoQ() {
            return Key.Envelope;
        }

        /* renamed from: getEquals-EK5gGoQ  reason: not valid java name */
        public final long m2856getEqualsEK5gGoQ() {
            return Key.Equals;
        }

        /* renamed from: getEscape-EK5gGoQ  reason: not valid java name */
        public final long m2857getEscapeEK5gGoQ() {
            return Key.Escape;
        }

        /* renamed from: getF-EK5gGoQ  reason: not valid java name */
        public final long m2858getFEK5gGoQ() {
            return Key.F;
        }

        /* renamed from: getF1-EK5gGoQ  reason: not valid java name */
        public final long m2859getF1EK5gGoQ() {
            return Key.F1;
        }

        /* renamed from: getF10-EK5gGoQ  reason: not valid java name */
        public final long m2860getF10EK5gGoQ() {
            return Key.F10;
        }

        /* renamed from: getF11-EK5gGoQ  reason: not valid java name */
        public final long m2861getF11EK5gGoQ() {
            return Key.F11;
        }

        /* renamed from: getF12-EK5gGoQ  reason: not valid java name */
        public final long m2862getF12EK5gGoQ() {
            return Key.F12;
        }

        /* renamed from: getF2-EK5gGoQ  reason: not valid java name */
        public final long m2863getF2EK5gGoQ() {
            return Key.F2;
        }

        /* renamed from: getF3-EK5gGoQ  reason: not valid java name */
        public final long m2864getF3EK5gGoQ() {
            return Key.F3;
        }

        /* renamed from: getF4-EK5gGoQ  reason: not valid java name */
        public final long m2865getF4EK5gGoQ() {
            return Key.F4;
        }

        /* renamed from: getF5-EK5gGoQ  reason: not valid java name */
        public final long m2866getF5EK5gGoQ() {
            return Key.F5;
        }

        /* renamed from: getF6-EK5gGoQ  reason: not valid java name */
        public final long m2867getF6EK5gGoQ() {
            return Key.F6;
        }

        /* renamed from: getF7-EK5gGoQ  reason: not valid java name */
        public final long m2868getF7EK5gGoQ() {
            return Key.F7;
        }

        /* renamed from: getF8-EK5gGoQ  reason: not valid java name */
        public final long m2869getF8EK5gGoQ() {
            return Key.F8;
        }

        /* renamed from: getF9-EK5gGoQ  reason: not valid java name */
        public final long m2870getF9EK5gGoQ() {
            return Key.F9;
        }

        /* renamed from: getFive-EK5gGoQ  reason: not valid java name */
        public final long m2871getFiveEK5gGoQ() {
            return Key.Five;
        }

        /* renamed from: getFocus-EK5gGoQ  reason: not valid java name */
        public final long m2872getFocusEK5gGoQ() {
            return Key.Focus;
        }

        /* renamed from: getForward-EK5gGoQ  reason: not valid java name */
        public final long m2873getForwardEK5gGoQ() {
            return Key.Forward;
        }

        /* renamed from: getFour-EK5gGoQ  reason: not valid java name */
        public final long m2874getFourEK5gGoQ() {
            return Key.Four;
        }

        /* renamed from: getFunction-EK5gGoQ  reason: not valid java name */
        public final long m2875getFunctionEK5gGoQ() {
            return Key.Function;
        }

        /* renamed from: getG-EK5gGoQ  reason: not valid java name */
        public final long m2876getGEK5gGoQ() {
            return Key.G;
        }

        /* renamed from: getGrave-EK5gGoQ  reason: not valid java name */
        public final long m2877getGraveEK5gGoQ() {
            return Key.Grave;
        }

        /* renamed from: getGuide-EK5gGoQ  reason: not valid java name */
        public final long m2878getGuideEK5gGoQ() {
            return Key.Guide;
        }

        /* renamed from: getH-EK5gGoQ  reason: not valid java name */
        public final long m2879getHEK5gGoQ() {
            return Key.H;
        }

        /* renamed from: getHeadsetHook-EK5gGoQ  reason: not valid java name */
        public final long m2880getHeadsetHookEK5gGoQ() {
            return Key.HeadsetHook;
        }

        /* renamed from: getHelp-EK5gGoQ  reason: not valid java name */
        public final long m2881getHelpEK5gGoQ() {
            return Key.Help;
        }

        /* renamed from: getHenkan-EK5gGoQ  reason: not valid java name */
        public final long m2882getHenkanEK5gGoQ() {
            return Key.Henkan;
        }

        /* renamed from: getHome-EK5gGoQ  reason: not valid java name */
        public final long m2883getHomeEK5gGoQ() {
            return Key.Home;
        }

        /* renamed from: getI-EK5gGoQ  reason: not valid java name */
        public final long m2884getIEK5gGoQ() {
            return Key.I;
        }

        /* renamed from: getInfo-EK5gGoQ  reason: not valid java name */
        public final long m2885getInfoEK5gGoQ() {
            return Key.Info;
        }

        /* renamed from: getInsert-EK5gGoQ  reason: not valid java name */
        public final long m2886getInsertEK5gGoQ() {
            return Key.Insert;
        }

        /* renamed from: getJ-EK5gGoQ  reason: not valid java name */
        public final long m2887getJEK5gGoQ() {
            return Key.J;
        }

        /* renamed from: getK-EK5gGoQ  reason: not valid java name */
        public final long m2888getKEK5gGoQ() {
            return Key.K;
        }

        /* renamed from: getKana-EK5gGoQ  reason: not valid java name */
        public final long m2889getKanaEK5gGoQ() {
            return Key.Kana;
        }

        /* renamed from: getKatakanaHiragana-EK5gGoQ  reason: not valid java name */
        public final long m2890getKatakanaHiraganaEK5gGoQ() {
            return Key.KatakanaHiragana;
        }

        /* renamed from: getL-EK5gGoQ  reason: not valid java name */
        public final long m2891getLEK5gGoQ() {
            return Key.L;
        }

        /* renamed from: getLanguageSwitch-EK5gGoQ  reason: not valid java name */
        public final long m2892getLanguageSwitchEK5gGoQ() {
            return Key.LanguageSwitch;
        }

        /* renamed from: getLastChannel-EK5gGoQ  reason: not valid java name */
        public final long m2893getLastChannelEK5gGoQ() {
            return Key.LastChannel;
        }

        /* renamed from: getLeftBracket-EK5gGoQ  reason: not valid java name */
        public final long m2894getLeftBracketEK5gGoQ() {
            return Key.LeftBracket;
        }

        /* renamed from: getM-EK5gGoQ  reason: not valid java name */
        public final long m2895getMEK5gGoQ() {
            return Key.M;
        }

        /* renamed from: getMannerMode-EK5gGoQ  reason: not valid java name */
        public final long m2896getMannerModeEK5gGoQ() {
            return Key.MannerMode;
        }

        /* renamed from: getMediaAudioTrack-EK5gGoQ  reason: not valid java name */
        public final long m2897getMediaAudioTrackEK5gGoQ() {
            return Key.MediaAudioTrack;
        }

        /* renamed from: getMediaClose-EK5gGoQ  reason: not valid java name */
        public final long m2898getMediaCloseEK5gGoQ() {
            return Key.MediaClose;
        }

        /* renamed from: getMediaEject-EK5gGoQ  reason: not valid java name */
        public final long m2899getMediaEjectEK5gGoQ() {
            return Key.MediaEject;
        }

        /* renamed from: getMediaFastForward-EK5gGoQ  reason: not valid java name */
        public final long m2900getMediaFastForwardEK5gGoQ() {
            return Key.MediaFastForward;
        }

        /* renamed from: getMediaNext-EK5gGoQ  reason: not valid java name */
        public final long m2901getMediaNextEK5gGoQ() {
            return Key.MediaNext;
        }

        /* renamed from: getMediaPause-EK5gGoQ  reason: not valid java name */
        public final long m2902getMediaPauseEK5gGoQ() {
            return Key.MediaPause;
        }

        /* renamed from: getMediaPlay-EK5gGoQ  reason: not valid java name */
        public final long m2903getMediaPlayEK5gGoQ() {
            return Key.MediaPlay;
        }

        /* renamed from: getMediaPlayPause-EK5gGoQ  reason: not valid java name */
        public final long m2904getMediaPlayPauseEK5gGoQ() {
            return Key.MediaPlayPause;
        }

        /* renamed from: getMediaPrevious-EK5gGoQ  reason: not valid java name */
        public final long m2905getMediaPreviousEK5gGoQ() {
            return Key.MediaPrevious;
        }

        /* renamed from: getMediaRecord-EK5gGoQ  reason: not valid java name */
        public final long m2906getMediaRecordEK5gGoQ() {
            return Key.MediaRecord;
        }

        /* renamed from: getMediaRewind-EK5gGoQ  reason: not valid java name */
        public final long m2907getMediaRewindEK5gGoQ() {
            return Key.MediaRewind;
        }

        /* renamed from: getMediaSkipBackward-EK5gGoQ  reason: not valid java name */
        public final long m2908getMediaSkipBackwardEK5gGoQ() {
            return Key.MediaSkipBackward;
        }

        /* renamed from: getMediaSkipForward-EK5gGoQ  reason: not valid java name */
        public final long m2909getMediaSkipForwardEK5gGoQ() {
            return Key.MediaSkipForward;
        }

        /* renamed from: getMediaStepBackward-EK5gGoQ  reason: not valid java name */
        public final long m2910getMediaStepBackwardEK5gGoQ() {
            return Key.MediaStepBackward;
        }

        /* renamed from: getMediaStepForward-EK5gGoQ  reason: not valid java name */
        public final long m2911getMediaStepForwardEK5gGoQ() {
            return Key.MediaStepForward;
        }

        /* renamed from: getMediaStop-EK5gGoQ  reason: not valid java name */
        public final long m2912getMediaStopEK5gGoQ() {
            return Key.MediaStop;
        }

        /* renamed from: getMediaTopMenu-EK5gGoQ  reason: not valid java name */
        public final long m2913getMediaTopMenuEK5gGoQ() {
            return Key.MediaTopMenu;
        }

        /* renamed from: getMenu-EK5gGoQ  reason: not valid java name */
        public final long m2914getMenuEK5gGoQ() {
            return Key.Menu;
        }

        /* renamed from: getMetaLeft-EK5gGoQ  reason: not valid java name */
        public final long m2915getMetaLeftEK5gGoQ() {
            return Key.MetaLeft;
        }

        /* renamed from: getMetaRight-EK5gGoQ  reason: not valid java name */
        public final long m2916getMetaRightEK5gGoQ() {
            return Key.MetaRight;
        }

        /* renamed from: getMicrophoneMute-EK5gGoQ  reason: not valid java name */
        public final long m2917getMicrophoneMuteEK5gGoQ() {
            return Key.MicrophoneMute;
        }

        /* renamed from: getMinus-EK5gGoQ  reason: not valid java name */
        public final long m2918getMinusEK5gGoQ() {
            return Key.Minus;
        }

        /* renamed from: getMoveEnd-EK5gGoQ  reason: not valid java name */
        public final long m2919getMoveEndEK5gGoQ() {
            return Key.MoveEnd;
        }

        /* renamed from: getMoveHome-EK5gGoQ  reason: not valid java name */
        public final long m2920getMoveHomeEK5gGoQ() {
            return Key.MoveHome;
        }

        /* renamed from: getMuhenkan-EK5gGoQ  reason: not valid java name */
        public final long m2921getMuhenkanEK5gGoQ() {
            return Key.Muhenkan;
        }

        /* renamed from: getMultiply-EK5gGoQ  reason: not valid java name */
        public final long m2922getMultiplyEK5gGoQ() {
            return Key.Multiply;
        }

        /* renamed from: getMusic-EK5gGoQ  reason: not valid java name */
        public final long m2923getMusicEK5gGoQ() {
            return Key.Music;
        }

        /* renamed from: getN-EK5gGoQ  reason: not valid java name */
        public final long m2924getNEK5gGoQ() {
            return Key.N;
        }

        /* renamed from: getNavigateIn-EK5gGoQ  reason: not valid java name */
        public final long m2925getNavigateInEK5gGoQ() {
            return Key.NavigateIn;
        }

        /* renamed from: getNavigateNext-EK5gGoQ  reason: not valid java name */
        public final long m2926getNavigateNextEK5gGoQ() {
            return Key.NavigateNext;
        }

        /* renamed from: getNavigateOut-EK5gGoQ  reason: not valid java name */
        public final long m2927getNavigateOutEK5gGoQ() {
            return Key.NavigateOut;
        }

        /* renamed from: getNavigatePrevious-EK5gGoQ  reason: not valid java name */
        public final long m2928getNavigatePreviousEK5gGoQ() {
            return Key.NavigatePrevious;
        }

        /* renamed from: getNine-EK5gGoQ  reason: not valid java name */
        public final long m2929getNineEK5gGoQ() {
            return Key.Nine;
        }

        /* renamed from: getNotification-EK5gGoQ  reason: not valid java name */
        public final long m2930getNotificationEK5gGoQ() {
            return Key.Notification;
        }

        /* renamed from: getNumLock-EK5gGoQ  reason: not valid java name */
        public final long m2931getNumLockEK5gGoQ() {
            return Key.NumLock;
        }

        /* renamed from: getNumPad0-EK5gGoQ  reason: not valid java name */
        public final long m2932getNumPad0EK5gGoQ() {
            return Key.NumPad0;
        }

        /* renamed from: getNumPad1-EK5gGoQ  reason: not valid java name */
        public final long m2933getNumPad1EK5gGoQ() {
            return Key.NumPad1;
        }

        /* renamed from: getNumPad2-EK5gGoQ  reason: not valid java name */
        public final long m2934getNumPad2EK5gGoQ() {
            return Key.NumPad2;
        }

        /* renamed from: getNumPad3-EK5gGoQ  reason: not valid java name */
        public final long m2935getNumPad3EK5gGoQ() {
            return Key.NumPad3;
        }

        /* renamed from: getNumPad4-EK5gGoQ  reason: not valid java name */
        public final long m2936getNumPad4EK5gGoQ() {
            return Key.NumPad4;
        }

        /* renamed from: getNumPad5-EK5gGoQ  reason: not valid java name */
        public final long m2937getNumPad5EK5gGoQ() {
            return Key.NumPad5;
        }

        /* renamed from: getNumPad6-EK5gGoQ  reason: not valid java name */
        public final long m2938getNumPad6EK5gGoQ() {
            return Key.NumPad6;
        }

        /* renamed from: getNumPad7-EK5gGoQ  reason: not valid java name */
        public final long m2939getNumPad7EK5gGoQ() {
            return Key.NumPad7;
        }

        /* renamed from: getNumPad8-EK5gGoQ  reason: not valid java name */
        public final long m2940getNumPad8EK5gGoQ() {
            return Key.NumPad8;
        }

        /* renamed from: getNumPad9-EK5gGoQ  reason: not valid java name */
        public final long m2941getNumPad9EK5gGoQ() {
            return Key.NumPad9;
        }

        /* renamed from: getNumPadAdd-EK5gGoQ  reason: not valid java name */
        public final long m2942getNumPadAddEK5gGoQ() {
            return Key.NumPadAdd;
        }

        /* renamed from: getNumPadComma-EK5gGoQ  reason: not valid java name */
        public final long m2943getNumPadCommaEK5gGoQ() {
            return Key.NumPadComma;
        }

        /* renamed from: getNumPadDivide-EK5gGoQ  reason: not valid java name */
        public final long m2944getNumPadDivideEK5gGoQ() {
            return Key.NumPadDivide;
        }

        /* renamed from: getNumPadDot-EK5gGoQ  reason: not valid java name */
        public final long m2945getNumPadDotEK5gGoQ() {
            return Key.NumPadDot;
        }

        /* renamed from: getNumPadEnter-EK5gGoQ  reason: not valid java name */
        public final long m2946getNumPadEnterEK5gGoQ() {
            return Key.NumPadEnter;
        }

        /* renamed from: getNumPadEquals-EK5gGoQ  reason: not valid java name */
        public final long m2947getNumPadEqualsEK5gGoQ() {
            return Key.NumPadEquals;
        }

        /* renamed from: getNumPadLeftParenthesis-EK5gGoQ  reason: not valid java name */
        public final long m2948getNumPadLeftParenthesisEK5gGoQ() {
            return Key.NumPadLeftParenthesis;
        }

        /* renamed from: getNumPadMultiply-EK5gGoQ  reason: not valid java name */
        public final long m2949getNumPadMultiplyEK5gGoQ() {
            return Key.NumPadMultiply;
        }

        /* renamed from: getNumPadRightParenthesis-EK5gGoQ  reason: not valid java name */
        public final long m2950getNumPadRightParenthesisEK5gGoQ() {
            return Key.NumPadRightParenthesis;
        }

        /* renamed from: getNumPadSubtract-EK5gGoQ  reason: not valid java name */
        public final long m2951getNumPadSubtractEK5gGoQ() {
            return Key.NumPadSubtract;
        }

        /* renamed from: getNumber-EK5gGoQ  reason: not valid java name */
        public final long m2952getNumberEK5gGoQ() {
            return Key.Number;
        }

        /* renamed from: getO-EK5gGoQ  reason: not valid java name */
        public final long m2953getOEK5gGoQ() {
            return Key.O;
        }

        /* renamed from: getOne-EK5gGoQ  reason: not valid java name */
        public final long m2954getOneEK5gGoQ() {
            return Key.One;
        }

        /* renamed from: getP-EK5gGoQ  reason: not valid java name */
        public final long m2955getPEK5gGoQ() {
            return Key.P;
        }

        /* renamed from: getPageDown-EK5gGoQ  reason: not valid java name */
        public final long m2956getPageDownEK5gGoQ() {
            return Key.PageDown;
        }

        /* renamed from: getPageUp-EK5gGoQ  reason: not valid java name */
        public final long m2957getPageUpEK5gGoQ() {
            return Key.PageUp;
        }

        /* renamed from: getPairing-EK5gGoQ  reason: not valid java name */
        public final long m2958getPairingEK5gGoQ() {
            return Key.Pairing;
        }

        /* renamed from: getPaste-EK5gGoQ  reason: not valid java name */
        public final long m2959getPasteEK5gGoQ() {
            return Key.Paste;
        }

        /* renamed from: getPeriod-EK5gGoQ  reason: not valid java name */
        public final long m2960getPeriodEK5gGoQ() {
            return Key.Period;
        }

        /* renamed from: getPictureSymbols-EK5gGoQ  reason: not valid java name */
        public final long m2961getPictureSymbolsEK5gGoQ() {
            return Key.PictureSymbols;
        }

        /* renamed from: getPlus-EK5gGoQ  reason: not valid java name */
        public final long m2962getPlusEK5gGoQ() {
            return Key.Plus;
        }

        /* renamed from: getPound-EK5gGoQ  reason: not valid java name */
        public final long m2963getPoundEK5gGoQ() {
            return Key.Pound;
        }

        /* renamed from: getPower-EK5gGoQ  reason: not valid java name */
        public final long m2964getPowerEK5gGoQ() {
            return Key.Power;
        }

        /* renamed from: getPrintScreen-EK5gGoQ  reason: not valid java name */
        public final long m2965getPrintScreenEK5gGoQ() {
            return Key.PrintScreen;
        }

        /* renamed from: getProfileSwitch-EK5gGoQ  reason: not valid java name */
        public final long m2966getProfileSwitchEK5gGoQ() {
            return Key.ProfileSwitch;
        }

        /* renamed from: getProgramBlue-EK5gGoQ  reason: not valid java name */
        public final long m2967getProgramBlueEK5gGoQ() {
            return Key.ProgramBlue;
        }

        /* renamed from: getProgramGreen-EK5gGoQ  reason: not valid java name */
        public final long m2968getProgramGreenEK5gGoQ() {
            return Key.ProgramGreen;
        }

        /* renamed from: getProgramRed-EK5gGoQ  reason: not valid java name */
        public final long m2969getProgramRedEK5gGoQ() {
            return Key.ProgramRed;
        }

        /* renamed from: getProgramYellow-EK5gGoQ  reason: not valid java name */
        public final long m2970getProgramYellowEK5gGoQ() {
            return Key.ProgramYellow;
        }

        /* renamed from: getQ-EK5gGoQ  reason: not valid java name */
        public final long m2971getQEK5gGoQ() {
            return Key.Q;
        }

        /* renamed from: getR-EK5gGoQ  reason: not valid java name */
        public final long m2972getREK5gGoQ() {
            return Key.R;
        }

        /* renamed from: getRefresh-EK5gGoQ  reason: not valid java name */
        public final long m2973getRefreshEK5gGoQ() {
            return Key.Refresh;
        }

        /* renamed from: getRightBracket-EK5gGoQ  reason: not valid java name */
        public final long m2974getRightBracketEK5gGoQ() {
            return Key.RightBracket;
        }

        /* renamed from: getRo-EK5gGoQ  reason: not valid java name */
        public final long m2975getRoEK5gGoQ() {
            return Key.Ro;
        }

        /* renamed from: getS-EK5gGoQ  reason: not valid java name */
        public final long m2976getSEK5gGoQ() {
            return Key.S;
        }

        /* renamed from: getScrollLock-EK5gGoQ  reason: not valid java name */
        public final long m2977getScrollLockEK5gGoQ() {
            return Key.ScrollLock;
        }

        /* renamed from: getSearch-EK5gGoQ  reason: not valid java name */
        public final long m2978getSearchEK5gGoQ() {
            return Key.Search;
        }

        /* renamed from: getSemicolon-EK5gGoQ  reason: not valid java name */
        public final long m2979getSemicolonEK5gGoQ() {
            return Key.Semicolon;
        }

        /* renamed from: getSetTopBoxInput-EK5gGoQ  reason: not valid java name */
        public final long m2980getSetTopBoxInputEK5gGoQ() {
            return Key.SetTopBoxInput;
        }

        /* renamed from: getSetTopBoxPower-EK5gGoQ  reason: not valid java name */
        public final long m2981getSetTopBoxPowerEK5gGoQ() {
            return Key.SetTopBoxPower;
        }

        /* renamed from: getSettings-EK5gGoQ  reason: not valid java name */
        public final long m2982getSettingsEK5gGoQ() {
            return Key.Settings;
        }

        /* renamed from: getSeven-EK5gGoQ  reason: not valid java name */
        public final long m2983getSevenEK5gGoQ() {
            return Key.Seven;
        }

        /* renamed from: getShiftLeft-EK5gGoQ  reason: not valid java name */
        public final long m2984getShiftLeftEK5gGoQ() {
            return Key.ShiftLeft;
        }

        /* renamed from: getShiftRight-EK5gGoQ  reason: not valid java name */
        public final long m2985getShiftRightEK5gGoQ() {
            return Key.ShiftRight;
        }

        /* renamed from: getSix-EK5gGoQ  reason: not valid java name */
        public final long m2986getSixEK5gGoQ() {
            return Key.Six;
        }

        /* renamed from: getSlash-EK5gGoQ  reason: not valid java name */
        public final long m2987getSlashEK5gGoQ() {
            return Key.Slash;
        }

        /* renamed from: getSleep-EK5gGoQ  reason: not valid java name */
        public final long m2988getSleepEK5gGoQ() {
            return Key.Sleep;
        }

        /* renamed from: getSoftLeft-EK5gGoQ  reason: not valid java name */
        public final long m2989getSoftLeftEK5gGoQ() {
            return Key.SoftLeft;
        }

        /* renamed from: getSoftRight-EK5gGoQ  reason: not valid java name */
        public final long m2990getSoftRightEK5gGoQ() {
            return Key.SoftRight;
        }

        /* renamed from: getSoftSleep-EK5gGoQ  reason: not valid java name */
        public final long m2991getSoftSleepEK5gGoQ() {
            return Key.SoftSleep;
        }

        /* renamed from: getSpacebar-EK5gGoQ  reason: not valid java name */
        public final long m2992getSpacebarEK5gGoQ() {
            return Key.Spacebar;
        }

        /* renamed from: getStem1-EK5gGoQ  reason: not valid java name */
        public final long m2993getStem1EK5gGoQ() {
            return Key.Stem1;
        }

        /* renamed from: getStem2-EK5gGoQ  reason: not valid java name */
        public final long m2994getStem2EK5gGoQ() {
            return Key.Stem2;
        }

        /* renamed from: getStem3-EK5gGoQ  reason: not valid java name */
        public final long m2995getStem3EK5gGoQ() {
            return Key.Stem3;
        }

        /* renamed from: getStemPrimary-EK5gGoQ  reason: not valid java name */
        public final long m2996getStemPrimaryEK5gGoQ() {
            return Key.StemPrimary;
        }

        /* renamed from: getSwitchCharset-EK5gGoQ  reason: not valid java name */
        public final long m2997getSwitchCharsetEK5gGoQ() {
            return Key.SwitchCharset;
        }

        /* renamed from: getSymbol-EK5gGoQ  reason: not valid java name */
        public final long m2998getSymbolEK5gGoQ() {
            return Key.Symbol;
        }

        /* renamed from: getSystemNavigationDown-EK5gGoQ  reason: not valid java name */
        public final long m2999getSystemNavigationDownEK5gGoQ() {
            return Key.SystemNavigationDown;
        }

        /* renamed from: getSystemNavigationLeft-EK5gGoQ  reason: not valid java name */
        public final long m3000getSystemNavigationLeftEK5gGoQ() {
            return Key.SystemNavigationLeft;
        }

        /* renamed from: getSystemNavigationRight-EK5gGoQ  reason: not valid java name */
        public final long m3001getSystemNavigationRightEK5gGoQ() {
            return Key.SystemNavigationRight;
        }

        /* renamed from: getSystemNavigationUp-EK5gGoQ  reason: not valid java name */
        public final long m3002getSystemNavigationUpEK5gGoQ() {
            return Key.SystemNavigationUp;
        }

        /* renamed from: getT-EK5gGoQ  reason: not valid java name */
        public final long m3003getTEK5gGoQ() {
            return Key.T;
        }

        /* renamed from: getTab-EK5gGoQ  reason: not valid java name */
        public final long m3004getTabEK5gGoQ() {
            return Key.Tab;
        }

        /* renamed from: getThree-EK5gGoQ  reason: not valid java name */
        public final long m3005getThreeEK5gGoQ() {
            return Key.Three;
        }

        /* renamed from: getThumbsDown-EK5gGoQ  reason: not valid java name */
        public final long m3006getThumbsDownEK5gGoQ() {
            return Key.ThumbsDown;
        }

        /* renamed from: getThumbsUp-EK5gGoQ  reason: not valid java name */
        public final long m3007getThumbsUpEK5gGoQ() {
            return Key.ThumbsUp;
        }

        /* renamed from: getToggle2D3D-EK5gGoQ  reason: not valid java name */
        public final long m3008getToggle2D3DEK5gGoQ() {
            return Key.Toggle2D3D;
        }

        /* renamed from: getTv-EK5gGoQ  reason: not valid java name */
        public final long m3009getTvEK5gGoQ() {
            return Key.Tv;
        }

        /* renamed from: getTvAntennaCable-EK5gGoQ  reason: not valid java name */
        public final long m3010getTvAntennaCableEK5gGoQ() {
            return Key.TvAntennaCable;
        }

        /* renamed from: getTvAudioDescription-EK5gGoQ  reason: not valid java name */
        public final long m3011getTvAudioDescriptionEK5gGoQ() {
            return Key.TvAudioDescription;
        }

        /* renamed from: getTvAudioDescriptionMixingVolumeDown-EK5gGoQ  reason: not valid java name */
        public final long m3012getTvAudioDescriptionMixingVolumeDownEK5gGoQ() {
            return Key.TvAudioDescriptionMixingVolumeDown;
        }

        /* renamed from: getTvAudioDescriptionMixingVolumeUp-EK5gGoQ  reason: not valid java name */
        public final long m3013getTvAudioDescriptionMixingVolumeUpEK5gGoQ() {
            return Key.TvAudioDescriptionMixingVolumeUp;
        }

        /* renamed from: getTvContentsMenu-EK5gGoQ  reason: not valid java name */
        public final long m3014getTvContentsMenuEK5gGoQ() {
            return Key.TvContentsMenu;
        }

        /* renamed from: getTvDataService-EK5gGoQ  reason: not valid java name */
        public final long m3015getTvDataServiceEK5gGoQ() {
            return Key.TvDataService;
        }

        /* renamed from: getTvInput-EK5gGoQ  reason: not valid java name */
        public final long m3016getTvInputEK5gGoQ() {
            return Key.TvInput;
        }

        /* renamed from: getTvInputComponent1-EK5gGoQ  reason: not valid java name */
        public final long m3017getTvInputComponent1EK5gGoQ() {
            return Key.TvInputComponent1;
        }

        /* renamed from: getTvInputComponent2-EK5gGoQ  reason: not valid java name */
        public final long m3018getTvInputComponent2EK5gGoQ() {
            return Key.TvInputComponent2;
        }

        /* renamed from: getTvInputComposite1-EK5gGoQ  reason: not valid java name */
        public final long m3019getTvInputComposite1EK5gGoQ() {
            return Key.TvInputComposite1;
        }

        /* renamed from: getTvInputComposite2-EK5gGoQ  reason: not valid java name */
        public final long m3020getTvInputComposite2EK5gGoQ() {
            return Key.TvInputComposite2;
        }

        /* renamed from: getTvInputHdmi1-EK5gGoQ  reason: not valid java name */
        public final long m3021getTvInputHdmi1EK5gGoQ() {
            return Key.TvInputHdmi1;
        }

        /* renamed from: getTvInputHdmi2-EK5gGoQ  reason: not valid java name */
        public final long m3022getTvInputHdmi2EK5gGoQ() {
            return Key.TvInputHdmi2;
        }

        /* renamed from: getTvInputHdmi3-EK5gGoQ  reason: not valid java name */
        public final long m3023getTvInputHdmi3EK5gGoQ() {
            return Key.TvInputHdmi3;
        }

        /* renamed from: getTvInputHdmi4-EK5gGoQ  reason: not valid java name */
        public final long m3024getTvInputHdmi4EK5gGoQ() {
            return Key.TvInputHdmi4;
        }

        /* renamed from: getTvInputVga1-EK5gGoQ  reason: not valid java name */
        public final long m3025getTvInputVga1EK5gGoQ() {
            return Key.TvInputVga1;
        }

        /* renamed from: getTvMediaContextMenu-EK5gGoQ  reason: not valid java name */
        public final long m3026getTvMediaContextMenuEK5gGoQ() {
            return Key.TvMediaContextMenu;
        }

        /* renamed from: getTvNetwork-EK5gGoQ  reason: not valid java name */
        public final long m3027getTvNetworkEK5gGoQ() {
            return Key.TvNetwork;
        }

        /* renamed from: getTvNumberEntry-EK5gGoQ  reason: not valid java name */
        public final long m3028getTvNumberEntryEK5gGoQ() {
            return Key.TvNumberEntry;
        }

        /* renamed from: getTvPower-EK5gGoQ  reason: not valid java name */
        public final long m3029getTvPowerEK5gGoQ() {
            return Key.TvPower;
        }

        /* renamed from: getTvRadioService-EK5gGoQ  reason: not valid java name */
        public final long m3030getTvRadioServiceEK5gGoQ() {
            return Key.TvRadioService;
        }

        /* renamed from: getTvSatellite-EK5gGoQ  reason: not valid java name */
        public final long m3031getTvSatelliteEK5gGoQ() {
            return Key.TvSatellite;
        }

        /* renamed from: getTvSatelliteBs-EK5gGoQ  reason: not valid java name */
        public final long m3032getTvSatelliteBsEK5gGoQ() {
            return Key.TvSatelliteBs;
        }

        /* renamed from: getTvSatelliteCs-EK5gGoQ  reason: not valid java name */
        public final long m3033getTvSatelliteCsEK5gGoQ() {
            return Key.TvSatelliteCs;
        }

        /* renamed from: getTvSatelliteService-EK5gGoQ  reason: not valid java name */
        public final long m3034getTvSatelliteServiceEK5gGoQ() {
            return Key.TvSatelliteService;
        }

        /* renamed from: getTvTeletext-EK5gGoQ  reason: not valid java name */
        public final long m3035getTvTeletextEK5gGoQ() {
            return Key.TvTeletext;
        }

        /* renamed from: getTvTerrestrialAnalog-EK5gGoQ  reason: not valid java name */
        public final long m3036getTvTerrestrialAnalogEK5gGoQ() {
            return Key.TvTerrestrialAnalog;
        }

        /* renamed from: getTvTerrestrialDigital-EK5gGoQ  reason: not valid java name */
        public final long m3037getTvTerrestrialDigitalEK5gGoQ() {
            return Key.TvTerrestrialDigital;
        }

        /* renamed from: getTvTimerProgramming-EK5gGoQ  reason: not valid java name */
        public final long m3038getTvTimerProgrammingEK5gGoQ() {
            return Key.TvTimerProgramming;
        }

        /* renamed from: getTvZoomMode-EK5gGoQ  reason: not valid java name */
        public final long m3039getTvZoomModeEK5gGoQ() {
            return Key.TvZoomMode;
        }

        /* renamed from: getTwo-EK5gGoQ  reason: not valid java name */
        public final long m3040getTwoEK5gGoQ() {
            return Key.Two;
        }

        /* renamed from: getU-EK5gGoQ  reason: not valid java name */
        public final long m3041getUEK5gGoQ() {
            return Key.U;
        }

        /* renamed from: getUnknown-EK5gGoQ  reason: not valid java name */
        public final long m3042getUnknownEK5gGoQ() {
            return Key.Unknown;
        }

        /* renamed from: getV-EK5gGoQ  reason: not valid java name */
        public final long m3043getVEK5gGoQ() {
            return Key.V;
        }

        /* renamed from: getVoiceAssist-EK5gGoQ  reason: not valid java name */
        public final long m3044getVoiceAssistEK5gGoQ() {
            return Key.VoiceAssist;
        }

        /* renamed from: getVolumeDown-EK5gGoQ  reason: not valid java name */
        public final long m3045getVolumeDownEK5gGoQ() {
            return Key.VolumeDown;
        }

        /* renamed from: getVolumeMute-EK5gGoQ  reason: not valid java name */
        public final long m3046getVolumeMuteEK5gGoQ() {
            return Key.VolumeMute;
        }

        /* renamed from: getVolumeUp-EK5gGoQ  reason: not valid java name */
        public final long m3047getVolumeUpEK5gGoQ() {
            return Key.VolumeUp;
        }

        /* renamed from: getW-EK5gGoQ  reason: not valid java name */
        public final long m3048getWEK5gGoQ() {
            return Key.W;
        }

        /* renamed from: getWakeUp-EK5gGoQ  reason: not valid java name */
        public final long m3049getWakeUpEK5gGoQ() {
            return Key.WakeUp;
        }

        /* renamed from: getWindow-EK5gGoQ  reason: not valid java name */
        public final long m3050getWindowEK5gGoQ() {
            return Key.Window;
        }

        /* renamed from: getX-EK5gGoQ  reason: not valid java name */
        public final long m3051getXEK5gGoQ() {
            return Key.X;
        }

        /* renamed from: getY-EK5gGoQ  reason: not valid java name */
        public final long m3052getYEK5gGoQ() {
            return Key.Y;
        }

        /* renamed from: getYen-EK5gGoQ  reason: not valid java name */
        public final long m3053getYenEK5gGoQ() {
            return Key.Yen;
        }

        /* renamed from: getZ-EK5gGoQ  reason: not valid java name */
        public final long m3054getZEK5gGoQ() {
            return Key.Z;
        }

        /* renamed from: getZenkakuHankaru-EK5gGoQ  reason: not valid java name */
        public final long m3055getZenkakuHankaruEK5gGoQ() {
            return Key.ZenkakuHankaru;
        }

        /* renamed from: getZero-EK5gGoQ  reason: not valid java name */
        public final long m3056getZeroEK5gGoQ() {
            return Key.Zero;
        }

        /* renamed from: getZoomIn-EK5gGoQ  reason: not valid java name */
        public final long m3057getZoomInEK5gGoQ() {
            return Key.ZoomIn;
        }

        /* renamed from: getZoomOut-EK5gGoQ  reason: not valid java name */
        public final long m3058getZoomOutEK5gGoQ() {
            return Key.ZoomOut;
        }

        private Companion() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getA-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2485getAEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAllApps-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2486getAllAppsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAltLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2487getAltLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAltRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2488getAltRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getApostrophe-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2489getApostropheEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAppSwitch-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2490getAppSwitchEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAssist-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2491getAssistEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAt-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2492getAtEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAvReceiverInput-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2493getAvReceiverInputEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getAvReceiverPower-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2494getAvReceiverPowerEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getB-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2495getBEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBack-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2496getBackEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBackslash-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2497getBackslashEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBackspace-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2498getBackspaceEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBookmark-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2499getBookmarkEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBreak-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2500getBreakEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBrightnessDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2501getBrightnessDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBrightnessUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2502getBrightnessUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getBrowser-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2503getBrowserEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2504getButton1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton10-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2505getButton10EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton11-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2506getButton11EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton12-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2507getButton12EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton13-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2508getButton13EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton14-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2509getButton14EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton15-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2510getButton15EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton16-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2511getButton16EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2512getButton2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton3-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2513getButton3EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton4-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2514getButton4EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton5-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2515getButton5EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton6-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2516getButton6EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton7-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2517getButton7EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton8-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2518getButton8EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButton9-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2519getButton9EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonA-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2520getButtonAEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonB-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2521getButtonBEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonC-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2522getButtonCEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonL1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2523getButtonL1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonL2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2524getButtonL2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonMode-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2525getButtonModeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonR1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2526getButtonR1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonR2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2527getButtonR2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonSelect-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2528getButtonSelectEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonStart-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2529getButtonStartEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonThumbLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2530getButtonThumbLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonThumbRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2531getButtonThumbRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonX-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2532getButtonXEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonY-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2533getButtonYEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getButtonZ-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2534getButtonZEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getC-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2535getCEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCalculator-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2536getCalculatorEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCalendar-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2537getCalendarEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCall-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2538getCallEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCamera-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2539getCameraEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCapsLock-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2540getCapsLockEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCaptions-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2541getCaptionsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getChannelDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2542getChannelDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getChannelUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2543getChannelUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getClear-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2544getClearEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getComma-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2545getCommaEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getContacts-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2546getContactsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCopy-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2547getCopyEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCtrlLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2548getCtrlLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCtrlRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2549getCtrlRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getCut-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2550getCutEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getD-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2551getDEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDelete-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2552getDeleteEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionCenter-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2553getDirectionCenterEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2554getDirectionDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionDownLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2555getDirectionDownLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionDownRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2556getDirectionDownRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2557getDirectionLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2558getDirectionRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2559getDirectionUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionUpLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2560getDirectionUpLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDirectionUpRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2561getDirectionUpRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getDvr-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2562getDvrEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getE-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2563getEEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2564getEightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEisu-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2565getEisuEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEndCall-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2566getEndCallEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEnter-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2567getEnterEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEnvelope-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2568getEnvelopeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEquals-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2569getEqualsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getEscape-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2570getEscapeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2571getFEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2572getF1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF10-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2573getF10EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF11-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2574getF11EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF12-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2575getF12EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2576getF2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF3-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2577getF3EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF4-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2578getF4EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF5-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2579getF5EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF6-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2580getF6EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF7-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2581getF7EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF8-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2582getF8EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getF9-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2583getF9EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getFive-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2584getFiveEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getFocus-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2585getFocusEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getForward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2586getForwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getFour-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2587getFourEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getFunction-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2588getFunctionEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getG-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2589getGEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getGrave-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2590getGraveEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getGuide-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2591getGuideEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getH-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2592getHEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getHeadsetHook-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2593getHeadsetHookEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getHelp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2594getHelpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getHenkan-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2595getHenkanEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getHome-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2596getHomeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getI-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2597getIEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getInfo-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2598getInfoEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getInsert-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2599getInsertEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getJ-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2600getJEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getK-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2601getKEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getKana-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2602getKanaEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getKatakanaHiragana-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2603getKatakanaHiraganaEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getL-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2604getLEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getLanguageSwitch-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2605getLanguageSwitchEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getLastChannel-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2606getLastChannelEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getLeftBracket-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2607getLeftBracketEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getM-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2608getMEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMannerMode-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2609getMannerModeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaAudioTrack-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2610getMediaAudioTrackEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaClose-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2611getMediaCloseEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaEject-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2612getMediaEjectEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaFastForward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2613getMediaFastForwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaNext-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2614getMediaNextEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaPause-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2615getMediaPauseEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaPlay-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2616getMediaPlayEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaPlayPause-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2617getMediaPlayPauseEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaPrevious-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2618getMediaPreviousEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaRecord-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2619getMediaRecordEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaRewind-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2620getMediaRewindEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaSkipBackward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2621getMediaSkipBackwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaSkipForward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2622getMediaSkipForwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaStepBackward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2623getMediaStepBackwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaStepForward-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2624getMediaStepForwardEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaStop-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2625getMediaStopEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMediaTopMenu-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2626getMediaTopMenuEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMenu-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2627getMenuEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMetaLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2628getMetaLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMetaRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2629getMetaRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMicrophoneMute-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2630getMicrophoneMuteEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMinus-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2631getMinusEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMoveEnd-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2632getMoveEndEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMoveHome-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2633getMoveHomeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMuhenkan-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2634getMuhenkanEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMultiply-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2635getMultiplyEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getMusic-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2636getMusicEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getN-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2637getNEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNavigateIn-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2638getNavigateInEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNavigateNext-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2639getNavigateNextEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNavigateOut-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2640getNavigateOutEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNavigatePrevious-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2641getNavigatePreviousEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNine-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2642getNineEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNotification-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2643getNotificationEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumLock-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2644getNumLockEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad0-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2645getNumPad0EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2646getNumPad1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2647getNumPad2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad3-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2648getNumPad3EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad4-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2649getNumPad4EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad5-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2650getNumPad5EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad6-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2651getNumPad6EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad7-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2652getNumPad7EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad8-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2653getNumPad8EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPad9-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2654getNumPad9EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadAdd-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2655getNumPadAddEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadComma-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2656getNumPadCommaEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadDivide-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2657getNumPadDivideEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadDot-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2658getNumPadDotEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadEnter-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2659getNumPadEnterEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadEquals-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2660getNumPadEqualsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadLeftParenthesis-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2661getNumPadLeftParenthesisEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadMultiply-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2662getNumPadMultiplyEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadRightParenthesis-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2663getNumPadRightParenthesisEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumPadSubtract-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2664getNumPadSubtractEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getNumber-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2665getNumberEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getO-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2666getOEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getOne-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2667getOneEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getP-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2668getPEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPageDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2669getPageDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPageUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2670getPageUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPairing-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2671getPairingEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPaste-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2672getPasteEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPeriod-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2673getPeriodEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPictureSymbols-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2674getPictureSymbolsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPlus-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2675getPlusEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPound-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2676getPoundEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPower-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2677getPowerEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getPrintScreen-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2678getPrintScreenEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getProfileSwitch-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2679getProfileSwitchEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getProgramBlue-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2680getProgramBlueEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getProgramGreen-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2681getProgramGreenEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getProgramRed-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2682getProgramRedEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getProgramYellow-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2683getProgramYellowEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getQ-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2684getQEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getR-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2685getREK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getRefresh-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2686getRefreshEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getRightBracket-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2687getRightBracketEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getRo-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2688getRoEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getS-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2689getSEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getScrollLock-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2690getScrollLockEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSearch-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2691getSearchEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSemicolon-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2692getSemicolonEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSetTopBoxInput-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2693getSetTopBoxInputEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSetTopBoxPower-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2694getSetTopBoxPowerEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSettings-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2695getSettingsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSeven-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2696getSevenEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getShiftLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2697getShiftLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getShiftRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2698getShiftRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSix-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2699getSixEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSlash-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2700getSlashEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSleep-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2701getSleepEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSoftLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2702getSoftLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSoftRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2703getSoftRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSoftSleep-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2704getSoftSleepEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSpacebar-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2705getSpacebarEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getStem1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2706getStem1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getStem2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2707getStem2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getStem3-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2708getStem3EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getStemPrimary-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2709getStemPrimaryEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSwitchCharset-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2710getSwitchCharsetEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSymbol-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2711getSymbolEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSystemNavigationDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2712getSystemNavigationDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSystemNavigationLeft-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2713getSystemNavigationLeftEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSystemNavigationRight-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2714getSystemNavigationRightEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getSystemNavigationUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2715getSystemNavigationUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getT-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2716getTEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTab-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2717getTabEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getThree-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2718getThreeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getThumbsDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2719getThumbsDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getThumbsUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2720getThumbsUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getToggle2D3D-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2721getToggle2D3DEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTv-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2722getTvEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvAntennaCable-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2723getTvAntennaCableEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvAudioDescription-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2724getTvAudioDescriptionEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvAudioDescriptionMixingVolumeDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2725getTvAudioDescriptionMixingVolumeDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvAudioDescriptionMixingVolumeUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2726getTvAudioDescriptionMixingVolumeUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvContentsMenu-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2727getTvContentsMenuEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvDataService-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2728getTvDataServiceEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInput-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2729getTvInputEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputComponent1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2730getTvInputComponent1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputComponent2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2731getTvInputComponent2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputComposite1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2732getTvInputComposite1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputComposite2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2733getTvInputComposite2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputHdmi1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2734getTvInputHdmi1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputHdmi2-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2735getTvInputHdmi2EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputHdmi3-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2736getTvInputHdmi3EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputHdmi4-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2737getTvInputHdmi4EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvInputVga1-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2738getTvInputVga1EK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvMediaContextMenu-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2739getTvMediaContextMenuEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvNetwork-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2740getTvNetworkEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvNumberEntry-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2741getTvNumberEntryEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvPower-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2742getTvPowerEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvRadioService-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2743getTvRadioServiceEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvSatellite-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2744getTvSatelliteEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvSatelliteBs-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2745getTvSatelliteBsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvSatelliteCs-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2746getTvSatelliteCsEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvSatelliteService-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2747getTvSatelliteServiceEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvTeletext-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2748getTvTeletextEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvTerrestrialAnalog-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2749getTvTerrestrialAnalogEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvTerrestrialDigital-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2750getTvTerrestrialDigitalEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvTimerProgramming-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2751getTvTimerProgrammingEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTvZoomMode-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2752getTvZoomModeEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getTwo-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2753getTwoEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getU-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2754getUEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getUnknown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2755getUnknownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getV-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2756getVEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getVoiceAssist-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2757getVoiceAssistEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getVolumeDown-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2758getVolumeDownEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getVolumeMute-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2759getVolumeMuteEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getVolumeUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2760getVolumeUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getW-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2761getWEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getWakeUp-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2762getWakeUpEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getWindow-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2763getWindowEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getX-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2764getXEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getY-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2765getYEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getYen-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2766getYenEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getZ-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2767getZEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getZenkakuHankaru-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2768getZenkakuHankaruEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getZero-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2769getZeroEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getZoomIn-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2770getZoomInEK5gGoQ$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getZoomOut-EK5gGoQ$annotations  reason: not valid java name */
        public static /* synthetic */ void m2771getZoomOutEK5gGoQ$annotations() {
        }
    }

    private /* synthetic */ Key(long j10) {
        this.keyCode = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Key m2478boximpl(long j10) {
        return new Key(j10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2480equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Key) || j10 != ((Key) obj).m2484unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2481equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2482hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2483toStringimpl(long j10) {
        return "Key code: " + j10;
    }

    public boolean equals(Object obj) {
        return m2480equalsimpl(this.keyCode, obj);
    }

    public final long getKeyCode() {
        return this.keyCode;
    }

    public int hashCode() {
        return m2482hashCodeimpl(this.keyCode);
    }

    @NotNull
    public String toString() {
        return m2483toStringimpl(this.keyCode);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2484unboximpl() {
        return this.keyCode;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2479constructorimpl(long j10) {
        return j10;
    }
}
